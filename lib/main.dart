import 'package:flutter/material.dart';

import 'di/service_locator.dart';
import 'feature/login/ui/login_screen.dart';

void main() {
  setupServiceLocator();
  runApp(MaterialApp(
    title: "Retailer",
    home: LoginScreen(),
  ));
}
