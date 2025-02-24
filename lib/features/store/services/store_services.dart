import 'dart:developer' as dev;
import 'dart:math';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:dairy_management_app/features/store/models/store_model.dart';

class StoreServices {
  final _box = Hive.box<StoreModel>('StoreBox');

  /// Get all store details
  List<StoreModel> getAllStores() {
    try {
      return _box.values.toList();
    } on HiveError catch (e, stack) {
      dev.log(e.message, stackTrace: stack);
      throw e.message;
    } catch (e, stack) {
      dev.log(e.toString(), stackTrace: stack);
      throw e.toString();
    }
  }

  /// Add or update store details
  Future<void> addOrUpdateStore(StoreModel store) async {
    try {
      await _box.put(store.id, store);
    } on HiveError catch (e, stack) {
      dev.log(e.message, stackTrace: stack);
      throw e.message;
    } catch (e, stack) {
      dev.log(e.toString(), stackTrace: stack);
      throw e.toString();
    }
  }

  /// Add or update store in bulk. This is more safer to update bulk data
  Future<void> addOrUpdateStores(Map<String, StoreModel> stores) async {
    try {
      await _box.putAll(stores);
    } on HiveError catch (e, stack) {
      dev.log(e.message, stackTrace: stack);
      throw e.message;
    } catch (e, stack) {
      dev.log(e.toString(), stackTrace: stack);
      throw e.toString();
    }
  }

  /// Delete a store with a given id if it exists
  Future<void> deleteStore(String id) async {
    try {
      await _box.delete(id);
    } on HiveError catch (e, stack) {
      dev.log(e.message, stackTrace: stack);
      throw e.message;
    } catch (e, stack) {
      dev.log(e.toString(), stackTrace: stack);
      throw e.toString();
    }
  }

  /// Get store details by id if it exists
  StoreModel? getStoreDetails(String id) {
    try {
      return _box.get(id);
    } on HiveError catch (e, stack) {
      dev.log(e.message, stackTrace: stack);
      throw e.message;
    } catch (e, stack) {
      dev.log(e.toString(), stackTrace: stack);
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

  /// Function to calculate distance using Haversine formula
  double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
    const double R = 6371; // Radius of Earth in km
    double dLat = _degreesToRadians(lat2 - lat1);
    double dLon = _degreesToRadians(lon2 - lon1);

    double a =
        sin(dLat / 2) * sin(dLat / 2) +
        cos(_degreesToRadians(lat1)) *
            cos(_degreesToRadians(lat2)) *
            sin(dLon / 2) *
            sin(dLon / 2);

    double c = 2 * atan2(sqrt(a), sqrt(1 - a));
    return R * c; // Distance in km
  }

  /// Helper function to convert degrees to radians
  double _degreesToRadians(double degrees) {
    return degrees * pi / 180;
  }

  /// Function to sort stores by distance from a given point
  List<StoreModel> sortStoresByDistance(
    List<StoreModel> stores,
    double userLat,
    double userLon,
  ) {
    stores.sort((a, b) {
      double distanceA = calculateDistance(userLat, userLon, a.lat, a.long);
      double distanceB = calculateDistance(userLat, userLon, a.lat, a.long);
      return distanceA.compareTo(distanceB); // Sort in ascending order
    });

    return stores;
  }


}
