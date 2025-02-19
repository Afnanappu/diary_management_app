import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:dairy_management_app/core/constants/app_screen_size.dart';
import 'package:flutter/material.dart';

class DashboardGridCard extends StatelessWidget {
  const DashboardGridCard({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  final IconData icon;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final cardWidth = AppScreenSize.width * .28;
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: AppColors.primaryBackground,
        shape: RoundedRectangleBorder(
          // side: BorderSide(color: AppColors.primary),
          borderRadius: BorderRadius.circular(15),
        ),

        child: SizedBox(
          height: cardWidth - 5,
          width: cardWidth,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(icon, size: 35),
                Text(title, style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
