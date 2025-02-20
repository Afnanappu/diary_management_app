import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

void showCustomSnackBar({
  required BuildContext context,
  required String content,
  Color color = AppColors.error,
}) {
  ScaffoldMessenger.of(
    context,
  ).showSnackBar(SnackBar(content: Text(content), backgroundColor: color));
}
