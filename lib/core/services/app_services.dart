import 'package:hive_flutter/hive_flutter.dart';

class AppServices {
  static final _box = Hive.box('AppBox');

  ///Check if landing screen in watched or not
  static bool get isSawLanding => _box.get('isSawLanding') ?? false;

  ///Update landing
  static set updateSawLanding(bool value) => _box.put('isSawLanding', value);

  ///Check if already login watched or not
  static bool get isLogin => _box.get('isLogin') ?? false;

  ///Update login
  static set updateLogin(bool value) => _box.put('isLogin', value);
}
