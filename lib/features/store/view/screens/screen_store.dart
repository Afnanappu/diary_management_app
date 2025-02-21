import 'package:dairy_management_app/core/components/custom_snack_bar.dart';
import 'package:dairy_management_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:dairy_management_app/core/components/custom_app_bar.dart';
import 'package:dairy_management_app/core/constants/navigation.dart';
import 'package:dairy_management_app/features/store/view/components/store_list_tile.dart';
import 'package:dairy_management_app/features/store/view/screens/screen_add_or_edit_store.dart';
import 'package:dairy_management_app/features/store/view_model/bloc_store/store_bloc.dart';

class ScreenStore extends StatelessWidget {
  const ScreenStore({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<StoreBloc>().add(StoreEvent.fetchStores());
    });
    return Scaffold(
      appBar: CustomAppBar(title: 'Store Management'),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: BlocConsumer<StoreBloc, StoreState>(
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
              loaded: (storeList) {
                return storeList.isEmpty
                    ? Center(child: Text('No store added'))
                    : Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: storeList.length,
                        itemBuilder: (context, index) {
                          final store = storeList[index];
                          return StoreListTile(
                            store: store,
                            onEdit: () {
                              Nav.push(
                                context,
                                ScreenAddOrEditStore(
                                  store: store,
                                  isEdit: true,
                                ),
                              );
                            },
                            onDelete: () {
                              _showDeleteDialog(context, store.id);
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
          Nav.push(context, ScreenAddOrEditStore());
        },
        label: Text('Add Store'),
      ),
    );
  }

  void _showDeleteDialog(BuildContext context, String storeId) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Confirm Deletion"),
          content: const Text("Are you sure you want to delete this store?"),
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
                context.read<StoreBloc>().add(StoreEvent.deleteStore(storeId));
              },
              child: const Text("Delete", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}
