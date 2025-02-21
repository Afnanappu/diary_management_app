import 'dart:developer';
import 'dart:io';

import 'package:dairy_management_app/features/store/view/screens/screen_map_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dairy_management_app/core/components/custom_snack_bar.dart';
import 'package:dairy_management_app/core/components/custom_text_field.dart';
import 'package:dairy_management_app/core/components/save_button.dart';
import 'package:dairy_management_app/core/utils/pick_image.dart';
import 'package:dairy_management_app/core/utils/validations.dart';
import 'package:dairy_management_app/features/store/models/store_model.dart';
import 'package:dairy_management_app/features/store/view_model/bloc_store/store_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:latlong2/latlong.dart';

class ScreenAddOrEditStore extends StatefulWidget {
  final StoreModel? store;
  final bool isEdit;

  const ScreenAddOrEditStore({super.key, this.store, this.isEdit = false})
    : assert(
        !(isEdit == true && store == null),
        "if(isEdit == true && store == null) Store can't be null",
      );

  @override
  _ScreenAddOrEditStoreState createState() => _ScreenAddOrEditStoreState();
}

class _ScreenAddOrEditStoreState extends State<ScreenAddOrEditStore> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  File? storeImage;
  LatLng? location;
  String? address;

  @override
  void initState() {
    super.initState();
    if (widget.store != null) {
      storeImage =
          widget.store!.image != null ? File(widget.store!.image!) : null;
      _nameController.text = widget.store!.name;
      _contactController.text = widget.store!.contact;
      location = LatLng(widget.store!.lat, widget.store!.long);
      address = widget.store!.address;
    }
  }

  /// Function to get address from latitude and longitude
  Future<void> getAddressFromLatLng(LatLng latLng) async {
    try {
      List<Placemark> placemarks = await placemarkFromCoordinates(
        latLng.latitude,
        latLng.longitude,
      );

      if (placemarks.isNotEmpty) {
        Placemark place = placemarks.first;
        setState(() {
          address = "${place.street}, ${place.locality}, ${place.country}";
        });
        log('Address: $address');
      }
    } catch (e) {
      log("Error getting address: $e");
      setState(() {
        address = "Unknown location";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: BlocListener<StoreBloc, StoreState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            success: (message) {
              Navigator.pop(context);
            },
          );
        },
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 25),
                  GestureDetector(
                    onTap: () async {
                      final image = await pickImage();
                      if (image != null) {
                        setState(() {
                          storeImage = File(image);
                        });
                      }
                    },
                    child: CircleAvatar(
                      radius: 70,
                      backgroundColor: Colors.grey[300],
                      backgroundImage:
                          storeImage != null ? FileImage(storeImage!) : null,
                      child:
                          storeImage == null
                              ? const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 50,
                              )
                              : null,
                    ),
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    controller: _nameController,
                    labelText: "Store Name",
                    icon: Icons.store,
                    validator:
                        (value) =>
                            TextValidation.name(value)
                                ? "Enter store name"
                                : null,
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    controller: _contactController,
                    labelText: "Contact",
                    icon: Icons.phone,
                    maxLength: 10,
                    keyboardType: TextInputType.phone,
                    validator:
                        (value) =>
                            TextValidation.phone(value)
                                ? "Enter valid contact"
                                : null,
                  ),
                  const SizedBox(height: 20),

                  // Select Address Section
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select Store Location",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      InkWell(
                        onTap: () async {
                          final result = await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ScreenMapStore(),
                            ),
                          );

                          if (result != null && result is LatLng) {
                            setState(() {
                              location = result;
                              getAddressFromLatLng(location!);
                            });
                            log(
                              'Location selected: $location, Address: $address',
                            );
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black26),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.location_on, color: Colors.red),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  address ?? "Tap to select location",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color:
                                        address != null
                                            ? Colors.black
                                            : Colors.black54,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  SaveButton(
                    onPressed: () {
                      if (location == null || address == null) {
                        showCustomSnackBar(
                          context: context,
                          content: 'Please select a store location',
                        );
                        return;
                      }
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                      if (widget.isEdit) {
                        context.read<StoreBloc>().add(
                          StoreEvent.editStore(
                            widget.store!.copyWith(
                              name: _nameController.text.trim(),
                              contact: _contactController.text.trim(),
                              image: storeImage?.path ?? widget.store?.image,
                              lat: location!.latitude,
                              long: location!.longitude,
                              address: address!,
                            ),
                          ),
                        );
                      } else {
                        context.read<StoreBloc>().add(
                          StoreEvent.addStore(
                            id: null,
                            name: _nameController.text.trim(),
                            contact: _contactController.text.trim(),
                            image: storeImage?.path,
                            lat: location!.latitude,
                            long: location!.longitude,
                            address: address!,
                            isVisited: false,
                            visitedTime: DateTime.now(),
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
