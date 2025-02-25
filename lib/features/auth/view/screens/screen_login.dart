import 'package:dairy_management_app/core/components/custom_text_field.dart';
import 'package:dairy_management_app/core/constants/app_screen_size.dart';
import 'package:dairy_management_app/core/utils/validations.dart';
import 'package:dairy_management_app/features/auth/view/widgets/login_button.dart';
import 'package:dairy_management_app/features/auth/view/widgets/login_top_clip_path.dart';
import 'package:flutter/material.dart';
import 'package:dairy_management_app/core/constants/app_colors.dart';

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
            LoginTopClipPath(),

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
                              LoginButton(
                                formKey: _formKey,
                                isAdmin: isAdmin,
                                emailController: _emailController,
                                passwordController: _passwordController,
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
