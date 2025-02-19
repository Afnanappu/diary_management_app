import 'package:flutter/widgets.dart';

class AppScreenSize {
  static late double _height;
  static late double _width;

  ///Provide the height of the screen.
  static double get height => _height;

  ///Provide the width of the screen.
  static double get width => _width;

  ///This function will store the height and width of the app that can later be accessed. It must be called in the MainApp.
  static void initialize(BuildContext context) {
    _height = MediaQuery.sizeOf(context).height;
    _width = MediaQuery.sizeOf(context).width;
  }
}
