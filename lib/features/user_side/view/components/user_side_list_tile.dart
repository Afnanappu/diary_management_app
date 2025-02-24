import 'dart:io';
import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:dairy_management_app/features/store/models/store_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class UserSideListTile extends StatelessWidget {
  final StoreModel store;
  final Widget? trailing;
  final void Function()? onTap;
  
  const UserSideListTile({
    super.key,
    required this.store,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      shadowColor: Colors.brown.withValues(alpha: 0.2),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: ListTile(
        onTap: onTap,
        contentPadding: const EdgeInsets.all(12),
        leading: CircleAvatar(
          radius: 35,
          backgroundColor: AppColors.secondary, // Background color if no image
          backgroundImage:
              store.image != null ? FileImage(File(store.image!)) : null,
          child:
              store.image == null
                  ? const Icon(
                    Icons.store,
                    color: AppColors.onSurface,
                    size: 30,
                  )
                  : null,
        ),
        title: Text(
          store.name,
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
                store.contact,
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
              const SizedBox(height: 4),
              Text(
                DateFormat.jm().format(store.visitedTime),
                style: TextStyle(fontSize: 14, color: Colors.grey[700]),
              ),
            ],
          ),
        ),
        trailing: trailing,
        // PopupMenuButton<String>(
        //   icon: const Icon(Icons.more_vert, color: Colors.brown, size: 28),
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(12),
        //   ),
        //   color: Colors.white,
        //   elevation: 4,
        //   onSelected: (String choice) {
        //     if (choice == 'Edit') {
        //       onEdit();
        //     } else if (choice == 'Delete') {
        //       onDelete();
        //     }
        //   },
        //   itemBuilder: (BuildContext context) => popupMenuItemList,
        // ),
      ),
    );
  }

  // List<PopupMenuEntry<String>> get popupMenuItemList {
  //   return [
  //     PopupMenuItem<String>(
  //       value: 'Edit',
  //       child: Row(
  //         children: [
  //           Container(
  //             padding: const EdgeInsets.all(6),
  //             decoration: BoxDecoration(
  //               color: Colors.blue[50],
  //               shape: BoxShape.circle,
  //             ),
  //             child: const Icon(Icons.edit, color: Colors.blue, size: 20),
  //           ),
  //           const SizedBox(width: 12),
  //           const Text(
  //             "Edit",
  //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
  //           ),
  //         ],
  //       ),
  //     ),
  //     PopupMenuItem<String>(
  //       value: 'Delete',
  //       child: Row(
  //         children: [
  //           Container(
  //             padding: const EdgeInsets.all(6),
  //             decoration: BoxDecoration(
  //               color: Colors.red[50],
  //               shape: BoxShape.circle,
  //             ),
  //             child: const Icon(Icons.delete, color: Colors.red, size: 20),
  //           ),
  //           const SizedBox(width: 12),
  //           const Text(
  //             "Delete",
  //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
  //           ),
  //         ],
  //       ),
  //     ),
  //   ];
  // }
}
