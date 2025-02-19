import 'package:dairy_management_app/core/constants/app_theme.dart';
import 'package:dairy_management_app/features/home/screens/screen_home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: const ScreenHome(),
    );
  }
}
