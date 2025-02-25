import 'package:dairy_management_app/core/components/custom_snack_bar.dart';
import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:dairy_management_app/core/constants/navigation.dart';
import 'package:dairy_management_app/core/services/app_services.dart';
import 'package:dairy_management_app/features/dashboard/view/screens/screen_dashboard.dart';
import 'package:dairy_management_app/features/driver/view_model/bloc_driver/driver_bloc.dart';
import 'package:dairy_management_app/features/user_side/view/screens/screen_user_side.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.isAdmin,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) : _formKey = formKey,
       _emailController = emailController,
       _passwordController = passwordController;

  final GlobalKey<FormState> _formKey;
  final bool isAdmin;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (!_formKey.currentState!.validate()) {
          showCustomSnackBar(
            context: context,
            content: 'Login failed, please try again!',
          );
          return;
        }
        if (isAdmin) {
          if (_emailController.text.trim() == 'admin@gmail.com' &&
              _passwordController.text.trim() == '12345678') {
            Nav.pushReplace(context, ScreenDashboard());
            return;
          }
        } else {
          final (isPossible, model) = context.read<DriverBloc>().checkLogin(
            _emailController.text.trim(),
            _passwordController.text.trim(),
          );

          if (isPossible) {
            Nav.pushReplace(context, ScreenUserSide(model: model!));
          } else {
            showCustomSnackBar(
              context: context,
              content: 'Login failed, please try again!',
            );
            return;
          }
        }

        //update the app service login as seen
        AppServices.updateLogin = true;
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: Text(
        isAdmin ? 'Login as Admin' : "Login",
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}
