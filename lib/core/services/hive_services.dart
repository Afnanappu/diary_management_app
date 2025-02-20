import 'package:dairy_management_app/features/driver/models/driver_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveServices {
  // late Box box;

  ///This function will initialize Hive for flutter and register adepter's 
  ///and open all boxes
  static Future<void> initialize() async {
    await Hive.initFlutter(); //initializing hive for flutter

    // Registering models to use with hive
    if (!Hive.isAdapterRegistered(DriverModelAdapter().typeId)) {
      Hive.registerAdapter(DriverModelAdapter());
    }

    await Hive.openBox<DriverModel>('DriverBox'); //driver model box
  }
}
