import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dairy_management_app/core/components/custom_app_bar.dart';
import 'package:dairy_management_app/core/constants/navigation.dart';
import 'package:dairy_management_app/features/driver/view/components/driver_list_tile.dart';
import 'package:dairy_management_app/features/driver/view/screens/screen_add_or_edit_driver.dart';
import 'package:dairy_management_app/features/driver/view_model/bloc/bloc_driver/driver_bloc.dart';

class ScreenDriver extends StatelessWidget {
  const ScreenDriver({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DriverBloc>().add(DriverEvent.fetchDrivers());
    });
    return Scaffold(
      appBar: CustomAppBar(title: 'Driver Management'),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: BlocBuilder<DriverBloc, DriverState>(
          builder: (context, state) {
            return state.maybeWhen(
              loading: () => Center(child: CircularProgressIndicator()),
              error: (error) => Center(child: Text(error)),
              orElse: () => Text('data'),
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
}
