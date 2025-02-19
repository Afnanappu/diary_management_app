import 'package:flutter/material.dart';

class Nav {

  ///Push a screen on top of the current screen like a stack.
  static void push(BuildContext context, Widget screen) => Navigator.of(
    context,
  ).push(MaterialPageRoute(builder: (context) => screen));


  ///Pop a screen from the stack.
  static void pop(BuildContext context) => Navigator.pop(context);
}
