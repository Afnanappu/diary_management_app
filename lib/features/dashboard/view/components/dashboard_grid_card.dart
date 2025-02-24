import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:dairy_management_app/core/constants/app_screen_size.dart';
import 'package:flutter/material.dart';

// class DashboardGridCard extends StatelessWidget {
//   const DashboardGridCard({
//     super.key,
//     required this.icon,
//     required this.title,
//     this.onTap,
//   });

//   final IconData icon;
//   final String title;
//   final void Function()? onTap;

//   @override
//   Widget build(BuildContext context) {
//     final cardWidth = AppScreenSize.width * .28;
//     return GestureDetector(
//       onTap: onTap,
//       child: Card(
//         color: AppColors.primaryBackground,
//         shape: RoundedRectangleBorder(
//           // side: BorderSide(color: AppColors.primary),
//           borderRadius: BorderRadius.circular(15),
//         ),

//         child: SizedBox(
//           height: cardWidth - 5,
//           width: cardWidth,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Icon(icon, size: 35, color: Colors.brown),
//                 Text(
//                   title,
//                   style: TextStyle(fontSize: 16, color: Colors.brown),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

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
      child: Container(
        height: cardWidth - 5,
        width: cardWidth,
        decoration: BoxDecoration(
          color: AppColors.primaryBackground, // Light teal background
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.primary,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 28, color: AppColors.onPrimary),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
