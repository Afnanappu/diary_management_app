import 'dart:developer';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/route_model.dart';

class RouteService {
  final _box = Hive.box<RouteModel>('RouteBox');


  /// Get all routes
  List<RouteModel> getAllRoutes() {
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

  /// Add or update a route
  Future<void> addOrUpdateRoute(RouteModel route) async {
    try {
      await _box.put(route.id, route);
    } on HiveError catch (e, stack) {
      log(e.message, stackTrace: stack);
      throw e.message;
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw e.toString();
    }
  }

  /// Delete a route by ID
  Future<void> deleteRoute(String id) async {
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

  /// Get route details by ID
  RouteModel? getRouteDetails(String id) {
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
}
