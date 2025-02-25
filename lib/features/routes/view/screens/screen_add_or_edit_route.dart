import 'package:dairy_management_app/core/components/custom_snack_bar.dart';
import 'package:dairy_management_app/core/components/custom_text_field.dart';
import 'package:dairy_management_app/core/components/save_button.dart';
import 'package:dairy_management_app/core/constants/app_screen_size.dart';
import 'package:dairy_management_app/core/constants/navigation.dart';
import 'package:dairy_management_app/features/driver/models/driver_model.dart';
import 'package:dairy_management_app/features/driver/view_model/bloc_driver/driver_bloc.dart';
import 'package:dairy_management_app/features/routes/models/route_model.dart';
import 'package:dairy_management_app/features/routes/view_model/bloc_route/route_bloc.dart';
import 'package:dairy_management_app/features/store/models/store_model.dart';
import 'package:dairy_management_app/features/store/view_model/bloc_store/store_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenAddOrEditRoute extends StatefulWidget {
  final RouteModel? route;
  final DriverModel? assignedDriver;
  final List<StoreModel>? selectedStores;
  final bool isEdit;

  const ScreenAddOrEditRoute({
    super.key,
    this.route,
    this.assignedDriver,
    this.selectedStores,
    this.isEdit = false,
  });

  @override
  State<ScreenAddOrEditRoute> createState() => _ScreenAddOrEditRouteState();
}

class _ScreenAddOrEditRouteState extends State<ScreenAddOrEditRoute> {
  DriverModel? selectedDriver;
  Set<StoreModel> selectedStores = {};

  final _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectedDriver = widget.assignedDriver;
    selectedStores = widget.selectedStores?.toSet() ?? {};

    _nameController.text = widget.route?.routeName ?? '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.route != null ? "Edit Route" : "Add Route"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              controller: _nameController,
              labelText: 'Route name',
              icon: Icons.route_outlined,
            ),
            const SizedBox(height: 20),

            BlocBuilder<DriverBloc, DriverState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => CircularProgressIndicator(),
                  loaded: (driverList) {
                    return SizedBox(
                      width: AppScreenSize.width - 50,
                      child: DropdownButton<DriverModel>(
                        isExpanded: true,
                        hint: Text('Select driver'),
                        value: selectedDriver,
                        items:
                            driverList.map((driver) {
                              return DropdownMenuItem(
                                value: driver,
                                child: Text(driver.name),
                              );
                            }).toList(),
                        onChanged: (driver) {
                          setState(() {
                            selectedDriver = driver;
                          });
                        },
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            Text(
              "Select Stores",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            BlocBuilder<StoreBloc, StoreState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => CircularProgressIndicator(),
                  loaded: (storeList) {
                    final list =
                        widget.isEdit
                            ? storeList
                            : storeList.where(
                              (element) => element.routeId == null,
                            );
                    return Expanded(
                      child:
                          list.isEmpty
                              ? Center(child: Text('No store available'))
                              : ListView(
                                children:
                                    list.map((store) {
                                      return CheckboxListTile(
                                        title: Text(store.name),
                                        value: selectedStores.contains(store),
                                        onChanged: (isChecked) {
                                          setState(() {
                                            isChecked == true
                                                ? selectedStores.add(store)
                                                : selectedStores.remove(store);
                                          });
                                        },
                                      );
                                    }).toList(),
                              ),
                    );
                  },
                );
              },
            ),
            SizedBox(height: 20),
            
            _saveButton(context),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }

  SaveButton _saveButton(BuildContext context) {
    return SaveButton(
            onPressed: () {
              if (selectedDriver == null || selectedStores.isEmpty) {
                showCustomSnackBar(
                  context: context,
                  content: "Please select a driver and at least one store.",
                );
                return;
              }

              if (widget.isEdit) {
                context.read<RouteBloc>().add(
                  RouteEvent.editRoute(
                    id: widget.route!.id,
                    driver: selectedDriver!,
                    routeName: _nameController.text.trim(),
                    selectedStores: selectedStores,
                  ),
                );
              } else {
                context.read<RouteBloc>().add(
                  RouteEvent.addRoute(
                    id: null,
                    driver: selectedDriver!,
                    routeName: _nameController.text.trim(),
                    selectedStores: selectedStores,
                  ),
                );
              }

              Nav.pop(context);
            },
          );
  }
}
