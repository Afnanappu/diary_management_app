import 'package:dairy_management_app/features/driver/models/driver_model.dart';
import 'package:dairy_management_app/features/driver/view_model/bloc_driver/driver_bloc.dart';
import 'package:dairy_management_app/features/routes/view/components/route_list_tile.dart';
import 'package:dairy_management_app/features/routes/view/screens/screen_add_or_edit_route.dart';
import 'package:dairy_management_app/features/routes/view_model/bloc_route/route_bloc.dart';
import 'package:dairy_management_app/features/store/models/store_model.dart';
import 'package:dairy_management_app/features/store/view_model/bloc_store/store_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dairy_management_app/core/components/custom_snack_bar.dart';
import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:dairy_management_app/core/components/custom_app_bar.dart';
import 'package:dairy_management_app/core/constants/navigation.dart';

class ScreenRoute extends StatelessWidget {
  const ScreenRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Route Management'),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: BlocConsumer<RouteBloc, RouteState>(
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
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error) => Center(child: Text(error)),
              orElse: () => const Text('Some unexpected error occurred'),
              loaded: (routeList) {
                return routeList.isEmpty
                    ? const Center(child: Text('No route added'))
                    : Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: routeList.length,
                        itemBuilder: (context, index) {
                          final route = routeList[index];
                          final stores = context
                              .read<StoreBloc>()
                              .getRouteStores(route.id);
                          final driver = context
                              .read<DriverBloc>()
                              .getDriverDetails(route.driverId);
                          return RouteListTile(
                            route: route,
                            driverName: driver.name,
                            storesCount: stores.length,
                            onEdit: () {
                              Nav.push(
                                context,
                                ScreenAddOrEditRoute(
                                  route: route,
                                  selectedStores: stores,
                                  assignedDriver: driver,
                                  isEdit: true,
                                ),
                              );
                            },
                            onDelete: () {
                              _showDeleteDialog(
                                context: context,
                                driver: driver,
                                routeId: route.id,
                                stores: stores,
                              );
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
        icon: const Icon(Icons.add, color: AppColors.onPrimary),
        onPressed: () {
          Nav.push(context, ScreenAddOrEditRoute());
        },
        label: const Text('Add Route'),
      ),
      resizeToAvoidBottomInset: false,persistentFooterButtons: [],
    );
  }

  void _showDeleteDialog({
    required BuildContext context,
    required String routeId,
    required List<StoreModel> stores,
    required DriverModel driver,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Confirm Deletion"),
          content: const Text("Are you sure you want to delete this route?"),
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
                context.read<RouteBloc>().add(
                  RouteEvent.deleteRoute(
                    driver: driver,
                    id: routeId,
                    selectedStores: stores,
                  ),
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
