import 'package:dairy_management_app/core/components/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Dashboard'),
      body: Center(child: Text('Home')),
    );
  }
}
