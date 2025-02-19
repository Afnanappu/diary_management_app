import 'package:dairy_management_app/core/constants/app_screen_size.dart';
import 'package:dairy_management_app/core/constants/app_theme.dart';
import 'package:dairy_management_app/features/dashboard/view/screens/screen_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppScreenSize.initialize(
      context,
    ); // To initialize the screen size that will be used later in app.
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const ScreenHome(),
    );
  }
}
