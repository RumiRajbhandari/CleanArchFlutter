import 'package:clean_arch_flutter_demo/services/service_locator.dart';
import 'package:clean_arch_flutter_demo/ui/views/login/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  setupServiceLocator();
  runApp(MaterialApp(
    title: "Retailer",
    home: LoginScreen(),
  ));
}
