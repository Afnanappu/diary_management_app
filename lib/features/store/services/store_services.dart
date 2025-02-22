import 'dart:developer';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:dairy_management_app/features/store/models/store_model.dart';

class StoreServices {
  final _box = Hive.box<StoreModel>('StoreBox');

  /// Get all store details
  List<StoreModel> getAllStores() {
    try {
      return _box.values.toList();
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
      await _box.put(store.id, store);
    } on HiveError catch (e, stack) {
      log(e.message, stackTrace: stack);
      throw e.message;
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw e.toString();
    }
  }

  /// Add or update store in bulk. This is more safer to update bulk data
  Future<void> addOrUpdateStores(Map<String, StoreModel> stores) async {
    try {
      await _box.putAll(stores);
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
      await _box.delete(id);
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
      return _box.get(id);
    } on HiveError catch (e, stack) {
      log(e.message, stackTrace: stack);
      throw e.message;
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw e.toString();
    }
  }

  /// Get stores based on route Id
  List<StoreModel> getStoresForRoute(String routeId) {
    return _box.values.where((store) => store.routeId == routeId).toList();
  }


  // Get all stores group by route. routeId[key], ListOfModels[values]
  Map<String, List<StoreModel>> groupStoresByRoute() {
    Map<String, List<StoreModel>> groupedStores = {};

    for (var store in _box.values) {
      if (!groupedStores.containsKey(store.routeId)) {
        groupedStores[store.routeId!] = [];
      }
      groupedStores[store.routeId]!.add(store);
    }

    return groupedStores;
  }

}
