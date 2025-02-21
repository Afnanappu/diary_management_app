import 'dart:developer';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:dairy_management_app/features/store/models/store_model.dart';

class StoreServices {
  final box = Hive.box<StoreModel>('StoreBox');

  /// Get all store details
  List<StoreModel> getAllStores() {
    try {
      return box.values.toList();
    } on HiveError catch (e, stack) {
      log(e.message, stackTrace: stack);
      throw e.message;
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw e.toString();
    }
  }

  /// Add or update store details
  Future<void> addOrUpdateStore(StoreModel store) async {
    try {
      await box.put(store.id, store);
    } on HiveError catch (e, stack) {
      log(e.message, stackTrace: stack);
      throw e.message;
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw e.toString();
    }
  }

  /// Delete a store with a given id if it exists
  Future<void> deleteStore(String id) async {
    try {
      await box.delete(id);
    } on HiveError catch (e, stack) {
      log(e.message, stackTrace: stack);
      throw e.message;
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw e.toString();
    }
  }

  /// Get store details by id if it exists
  StoreModel? getStoreDetails(String id) {
    try {
      return box.get(id);
    } on HiveError catch (e, stack) {
      log(e.message, stackTrace: stack);
      throw e.message;
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw e.toString();
    }
  }
}
