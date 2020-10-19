import 'package:flutter/material.dart';
import 'package:uix/views/screens/home_screen.dart';

import 'constants/app_theme.dart';
import 'constants/routes.dart';
import 'constants/strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Strings.appName,
      theme: themeData,
      home: HomeScree(),
      routes: Routes.routes,
    );
  }
}
