import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(
            height: 8,
          ),
          Text(
            'Loading...',
            style: TextStyle(fontFamily: 'Roboto'),
          )
        ],
      ),
    ));
  }
}
