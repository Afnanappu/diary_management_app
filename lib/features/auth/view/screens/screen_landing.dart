import 'package:dairy_management_app/core/constants/navigation.dart';
import 'package:dairy_management_app/features/auth/view/screens/screen_login.dart';
import 'package:flutter/material.dart';
import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.5,
              width: double.infinity,
              color: AppColors.primary,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.local_dining, size: 80, color: Colors.white),
                  SizedBox(height: 10),
                  Text(
                    "Dairy Management",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                    "Effortless Dairy Management at Your Fingertips!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to login screen
                    Nav.push(context, LoginScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Go to Login",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



// WaveClipperOne()