import 'package:dairy_management_app/core/components/custom_snack_bar.dart';
import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dairy_management_app/core/components/custom_app_bar.dart';
import 'package:dairy_management_app/core/constants/navigation.dart';
import 'package:dairy_management_app/features/driver/view/components/driver_list_tile.dart';
import 'package:dairy_management_app/features/driver/view/screens/screen_add_or_edit_driver.dart';
import 'package:dairy_management_app/features/driver/view_model/bloc_driver/driver_bloc.dart';

class ScreenDriver extends StatelessWidget {
  const ScreenDriver({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Driver Management'),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: BlocConsumer<DriverBloc, DriverState>(
          listener: (context, state) {
            state.maybeWhen(
              orElse: () {},
              success: (message) {
                showCustomSnackBar(
                  context: context,
                  content: message,
                  color: AppColors.success,
                );
              },
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => Center(child: CircularProgressIndicator()),
              error: (error) => Center(child: Text(error)),
              orElse: () => Text('Some unexpected error occurred'),
              loaded: (driverList) {
                return driverList.isEmpty
                    ? Center(child: Text('No driver added'))
                    : Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: driverList.length,
                        itemBuilder: (context, index) {
                          final driver = driverList[index];
                          return DriverListTile(
                            driver: driver,
                            onEdit: () {
                              Nav.push(
                                context,
                                ScreenAddOrEditDriver(
                                  driver: driver,
                                  isEdit: true,
                                ),
                              );
                            },
                            onDelete: () {
                              //TODO: Delete with care, first need to check if he is already have any routes
                              _showDeleteDialog(context, driver.id);
                            },
                          );
                        },
                      ),
                    );
              },
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ElevatedButton.icon(
        icon: Icon(Icons.add, color: AppColors.onPrimary),
        onPressed: () {
          Nav.push(context, ScreenAddOrEditDriver());
        },
        label: Text('Add Driver'),
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, String driverId) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Confirm Deletion"),
          content: const Text("Are you sure you want to delete this driver?"),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close dialog
              },
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close dialog
                context.read<DriverBloc>().add(
                  DriverEvent.deleteDriver(driverId),
                );
              },
              child: const Text("Delete", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}
