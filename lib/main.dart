import 'package:clean_arch_flutter_demo/feature/home/ui/home_screen.dart';
import 'package:clean_arch_flutter_demo/feature/map/map_screen.dart';
import 'package:clean_arch_flutter_demo/res/colors.dart';
import 'package:flutter/material.dart';

import 'di/service_locator.dart';
import 'feature/login/ui/login_screen.dart';

void main() {
  setupServiceLocator();
  runApp(MaterialApp(
    title: "Retailer",
    routes: {
      '/': (context) => LoginScreen(),
      '/home': (context) => HomeScreen(),
      '/map': (context) => MapScreen()
    },
    theme: ThemeData(
        primaryColor: white_fffff,
        accentColor: color_accent,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
            headline1: TextStyle(
                fontFamily: 'Rubik',
                fontWeight: FontWeight.w300,
                fontSize: 28,
                color: text_color_primary_dark),
            headline2: TextStyle(fontFamily: 'Rubik', fontSize: 15, color: text_color_secondary))),
  ));
}
