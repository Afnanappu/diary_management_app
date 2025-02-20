import 'dart:io';
import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:dairy_management_app/features/driver/models/driver_model.dart';
import 'package:flutter/material.dart';

class DriverListTile extends StatelessWidget {
  final DriverModel driver;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const DriverListTile({
    super.key,
    required this.driver,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      shadowColor: Colors.brown.withValues(alpha: 0.2),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: CircleAvatar(
          radius: 35,
          backgroundColor: AppColors.secondary, // Subtle background if no image
          backgroundImage:
              driver.profile.isNotEmpty
                  ? FileImage(File(driver.profile))
                  : null,
          child:
              File(driver.profile).existsSync()
                  ? const Icon(
                    Icons.person,
                    color: AppColors.onSurface,
                    size: 30,
                  )
                  : null,
        ),
        title: Text(
          driver.name,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColors.onSurface,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                driver.email,
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
              const SizedBox(height: 4),
              Text(
                driver.phoneNo,
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
            ],
          ),
        ),
        trailing: PopupMenuButton<String>(
          icon: const Icon(Icons.more_vert, color: Colors.brown, size: 28),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              12,
            ), // Rounded corners for a modern look
          ),
          color: Colors.white, // Background color of the popup menu
          elevation: 4, // Adds depth effect
          onSelected: (String choice) {
            if (choice == 'Edit') {
              onEdit();
            } else if (choice == 'Delete') {
              onDelete();
            }
          },
          itemBuilder: (BuildContext context) => popupMenuItemList,
        ),
      ),
    );
  }

  List<PopupMenuEntry<String>> get popupMenuItemList {
    return [
      PopupMenuItem<String>(
        value: 'Edit',
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.blue[50], // Light blue background for soft feel
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.edit, color: Colors.blue, size: 20),
            ),
            const SizedBox(width: 12),
            const Text(
              "Edit",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      PopupMenuItem<String>(
        value: 'Delete',
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.red[50], // Light red background for soft feel
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.delete, color: Colors.red, size: 20),
            ),
            const SizedBox(width: 12),
            const Text(
              "Delete",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    ];
  }
}
