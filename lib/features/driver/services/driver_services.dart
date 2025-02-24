import 'dart:developer';

import 'package:dairy_management_app/features/driver/models/driver_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class DriverServices {
  final _box = Hive.box<DriverModel>('DriverBox');

  ///Get all driver details
  List<DriverModel> getAllDriver() {
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

  ///Add or update driver details
  Future<void> addOrUpdateDriver(DriverModel driver) async {
    try {
      await _box.put(driver.id, driver);
    } on HiveError catch (e, stack) {
      log(e.message, stackTrace: stack);
      throw e.message;
    } catch (e, stack) {
      log(e.toString(), stackTrace: stack);
      throw e.toString();
    }
  }

  ///Delete Driver with given id if exist
  Future<void> deleteDriver(String id) async {
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

  ///Get Driver details with id if exist
  DriverModel? getDriverDetails(String id) {
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

  List<DriverModel> getDriverStores(String driverId) {
    return _box.values.where((element) => element.id == driverId).toList();
  }
}
