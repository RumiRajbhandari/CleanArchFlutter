import 'package:clean_arch_flutter_demo/feature/home/ui/home_screen.dart';
import 'package:flutter/material.dart';

import 'di/service_locator.dart';
import 'feature/login/ui/login_screen.dart';

void main() {
  setupServiceLocator();
  runApp(MaterialApp(
    title: "Retailer",
    routes: {
      '/': (context) => LoginScreen(),
      '/home': (context) => HomeScreen()
    },
  ));
}
