import 'package:clean_arch_flutter_demo/res/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: main_background,
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Home',
            textAlign: TextAlign.center,
            style: TextStyle(color: text_color_primary, fontSize: 18),
          ),
        ],
      )),
    );
  }
}
