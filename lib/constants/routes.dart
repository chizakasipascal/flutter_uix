import 'package:flutter/material.dart';
import 'package:uix/views/screens/home_screen.dart';

class Routes {
  Routes._();

  static const String home = '/home';

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => HomeScree(),
  };
}
