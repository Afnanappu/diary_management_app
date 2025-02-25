import 'package:dairy_management_app/core/components/custom_snack_bar.dart';
import 'package:dairy_management_app/core/components/custom_text_field.dart';
import 'package:dairy_management_app/core/constants/app_screen_size.dart';
import 'package:dairy_management_app/core/constants/navigation.dart';
import 'package:dairy_management_app/core/services/app_services.dart';
import 'package:dairy_management_app/core/utils/validations.dart';
import 'package:dairy_management_app/features/dashboard/view/screens/screen_dashboard.dart';
import 'package:dairy_management_app/features/driver/view_model/bloc_driver/driver_bloc.dart';
import 'package:dairy_management_app/features/user_side/view/screens/screen_user_side.dart';
import 'package:flutter/material.dart';
import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isAdmin = false;
  final _formKey = GlobalKey<FormState>();

  final _passwordController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Top Clipper Design
            ClipPath(
              clipper: WaveClipperTwo(),
              child: Container(
                height: 250,
                decoration: BoxDecoration(color: AppColors.primary),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.local_dining, size: 80, color: Colors.white),
                      SizedBox(height: 10),
                      Text(
                        "Dairy Van",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // Login Form
            SizedBox(
              child: Form(
                key: _formKey,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.0,
                      right: 24.0,
                      top: AppScreenSize.height * .05,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 200),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 10,
                                spreadRadius: 2,
                              ),
                            ],
                          ),
                          child: Column(
                            children: [
                              // Admin Toggle Button
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Admin",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  Switch(
                                    value: isAdmin,
                                    activeColor: AppColors.primary,
                                    onChanged: (value) {
                                      setState(() {
                                        isAdmin = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                              // Email Field
                              CustomTextField(
                                controller: _emailController,
                                icon: Icons.email,
                                labelText: "Email",
                                validator:
                                    (value) =>
                                        TextValidation.email(value)
                                            ? "Enter the correct email"
                                            : null,
                              ),
                              SizedBox(height: 15),
                              // Password Field
                              CustomTextField(
                                obscureText: true,
                                labelText: "Password",
                                controller: _passwordController,
                                icon: Icons.lock,
                                validator:
                                    (value) =>
                                        value == null
                                            ? "Password in incorrect"
                                            : null,
                              ),
                              SizedBox(height: 15),
                              // Login Button
                              ElevatedButton(
                                onPressed: () {
                                  if (!_formKey.currentState!.validate()) {
                                    showCustomSnackBar(
                                      context: context,
                                      content:
                                          'Login failed, please try again!',
                                    );
                                    return;
                                  }
                                  if (isAdmin) {
                                    if (_emailController.text.trim() ==
                                            'admin@gmail.com' &&
                                        _passwordController.text.trim() ==
                                            '12345678') {
                                      Nav.pushReplace(
                                        context,
                                        ScreenDashboard(),
                                      );
                                      return;
                                    }
                                  } else {
                                    final (isPossible, model) = context
                                        .read<DriverBloc>()
                                        .checkLogin(
                                          _emailController.text.trim(),
                                          _passwordController.text.trim(),
                                        );

                                    if (isPossible) {
                                      Nav.pushReplace(
                                        context,
                                        ScreenUserSide(model: model!),
                                      );
                                    } else {
                                      showCustomSnackBar(
                                        context: context,
                                        content:
                                            'Login failed, please try again!',
                                      );
                                      return;
                                    }
                                  }

                                  //update the app service login as seen
                                  AppServices.updateLogin = true;
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primary,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 40,
                                    vertical: 12,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Text(
                                  isAdmin ? 'Login as Admin' : "Login",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(color: AppColors.primary),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
