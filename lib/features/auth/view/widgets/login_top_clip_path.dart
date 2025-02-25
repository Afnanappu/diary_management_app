import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LoginTopClipPath extends StatelessWidget {
  const LoginTopClipPath({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        height: 250,
        decoration: BoxDecoration(color: AppColors.primary),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/van_icon_w.png', scale: 1.8),
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
    );
  }
}
