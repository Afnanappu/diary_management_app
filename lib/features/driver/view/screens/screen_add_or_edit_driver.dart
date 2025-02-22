import 'dart:io';

import 'package:dairy_management_app/core/components/custom_snack_bar.dart';
import 'package:dairy_management_app/core/components/custom_text_field.dart';
import 'package:dairy_management_app/core/components/save_button.dart';
import 'package:dairy_management_app/core/constants/navigation.dart';
import 'package:dairy_management_app/core/utils/pick_image.dart';
import 'package:dairy_management_app/core/utils/validations.dart';
import 'package:dairy_management_app/features/driver/models/driver_model.dart';
import 'package:dairy_management_app/features/driver/view_model/bloc_driver/driver_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenAddOrEditDriver extends StatelessWidget {
  final DriverModel? driver;
  final bool isEdit;

  ScreenAddOrEditDriver({super.key, this.driver, this.isEdit = false})
    : assert(
        !(isEdit == true && driver == null),
        "if(isEdit == true && driver == null) Driver can't be null",
      );

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    File? profileImage;
    bool isPasswordVisible = false;

    if (driver != null) {
      profileImage = File(driver!.profile);
      _nameController.text = driver!.name;
      _emailController.text = driver!.email;
      _phoneController.text = driver!.phoneNo;
      _passwordController.text = driver!.password;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: BlocListener<DriverBloc, DriverState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {},
            success: (message) {
              Nav.pop(context);
            },
          );
        },
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                spacing: 5,
                children: [
                  const SizedBox(height: 25),
                  StatefulBuilder(
                    builder: (context, setState) {
                      return GestureDetector(
                        onTap: () async {
                          final image = await pickImage();
                          if (image != null) {
                            setState(() {
                              profileImage = File(image);
                            });
                          }
                        },
                        child: CircleAvatar(
                          radius: 70,
                          backgroundColor: Colors.grey[300],
                          backgroundImage:
                              profileImage != null
                                  ? FileImage(profileImage!)
                                  : null,
                          child:
                              profileImage == null
                                  ? const Icon(
                                    Icons.camera_alt,
                                    color: Colors.white,
                                    size: 50,
                                  )
                                  : null,
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 15),
                  CustomTextField(
                    controller: _nameController,
                    labelText: "Driver Name",
                    icon: Icons.person,
                    validator:
                        (value) =>
                            TextValidation.name(value)
                                ? "Enter driver name"
                                : null,
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    controller: _emailController,
                    labelText: "Email",
                    icon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                    validator:
                        (value) =>
                            TextValidation.email(value)
                                ? "Enter valid email"
                                : null,
                  ),
                  const SizedBox(height: 10),
                  CustomTextField(
                    controller: _phoneController,
                    labelText: "Phone Number",
                    icon: Icons.phone,
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                    validator:
                        (value) =>
                            TextValidation.phone(value)
                                ? "Enter valid phone number"
                                : null,
                  ),
                  const SizedBox(height: 10),
                  StatefulBuilder(
                    builder: (context, setState) {
                      return CustomTextField(
                        controller: _passwordController,
                        labelText: "Password",
                        icon: Icons.lock,
                        obscureText: !isPasswordVisible,
                        suffixIcon: IconButton(
                          icon: Icon(
                            isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          },
                        ),
                        validator:
                            (value) =>
                                value!.length < 6
                                    ? "Password must be at least 6 characters"
                                    : null,
                      );
                    },
                  ),
                  const SizedBox(height: 20),
                  SaveButton(
                    onPressed: () {
                      if (profileImage == null) {
                        showCustomSnackBar(
                          context: context,
                          content: 'Profile pic is missing, try to add one',
                        );
                      }
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                      if (isEdit) {
                        context.read<DriverBloc>().add(
                          DriverEvent.editDriver(
                            DriverModel(
                              id: driver!.id,
                              name: _nameController.text.trim(),
                              email: _emailController.text.trim(),
                              password: _passwordController.text.trim(),
                              phoneNo: _phoneController.text.trim(),
                              profile: profileImage?.path ?? driver!.profile,
                             
                            ),
                          ),
                        );
                      } else {
                        context.read<DriverBloc>().add(
                          DriverEvent.addDrivers(
                            id: null,
                            name: _nameController.text.trim(),
                            email: _emailController.text.trim(),
                            password: _passwordController.text.trim(),
                            phone: _phoneController.text.trim(),
                            profile: profileImage?.path,
                            routes: [],
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
