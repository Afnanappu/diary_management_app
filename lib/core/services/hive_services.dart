import 'package:dairy_management_app/features/driver/models/driver_model.dart';
import 'package:dairy_management_app/features/routes/models/route_model.dart';
import 'package:dairy_management_app/features/store/models/store_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveServices {
  ///This function will initialize Hive for flutter and register adepter's
  ///and open all boxes
  static Future<void> initialize() async {
    await Hive.initFlutter(); //initializing hive for flutter

    // Registering models to use with hive
    if (!Hive.isAdapterRegistered(DriverModelAdapter().typeId)) {
      Hive.registerAdapter(DriverModelAdapter());
    }
    if (!Hive.isAdapterRegistered(StoreModelAdapter().typeId)) {
      Hive.registerAdapter(StoreModelAdapter());
    }
    if (!Hive.isAdapterRegistered(RouteModelAdapter().typeId)) {
      Hive.registerAdapter(RouteModelAdapter());
    }

    //Opening all boxes
    await Hive.openBox<DriverModel>('DriverBox'); //Open driver box
    await Hive.openBox<StoreModel>('StoreBox'); // Open Store Box
    await Hive.openBox<RouteModel>('RouteBox'); // Open Route Box
    await Hive.openBox('AppBox'); // Open Route Box
  }
}
