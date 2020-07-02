import 'package:clean_arch_flutter_demo/business_logic/models/user.dart';
import 'package:clean_arch_flutter_demo/business_logic/view_models/login_viewmodel.dart';
import 'package:clean_arch_flutter_demo/res/colors.dart';
import 'package:clean_arch_flutter_demo/services/service_locator.dart';
import 'package:clean_arch_flutter_demo/ui/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login_text_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginViewModel viewModel = serviceLocator<LoginViewModel>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      backgroundColor: white_fffff,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text(
              'Sign in',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w300,
                  color: text_color_primary_dark),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Please enter your credential to proceed.',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Rubik',
                  color: text_color_secondary),
            ),
            SizedBox(
              height: 64,
            ),
            _buildLoginForm(viewModel)
          ],
        ),
      )),
    );
  }

  Widget _buildLoginForm(LoginViewModel loginViewModel) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'PHONE NUMBER',
          style: TextStyle(
              fontSize: 12,
              fontFamily: 'Rubik',
              fontWeight: FontWeight.w500,
              color: text_color_label),
        ),
        SizedBox(
          height: 8,
        ),
        LoginTextField(
            hintText: 'Enter phone number',
            validator: (String value) {},
            onSaved: (String value) {},
            isPassword: false,
            isUserName: true),
        SizedBox(
          height: 16,
        ),
        Text(
          'PIN',
          style: TextStyle(
              fontSize: 12,
              fontFamily: 'Rubik',
              fontWeight: FontWeight.w500,
              color: text_color_label),
        ),
        SizedBox(
          height: 8,
        ),
        LoginTextField(
            hintText: 'Enter PIN',
            validator: (String value) {},
            onSaved: (String value) {},
            isPassword: true,
            isUserName: false),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
          child: Text(
            'FORGOT PIN?',
            textAlign: TextAlign.end,
            style: TextStyle(
                color: color_accent, fontSize: 12, fontFamily: 'Rubik'),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        RoundedButton(
            text: 'Sign In',
            onPress: () {
              print('on press');
              viewModel.login(User(username: 'test user', password: '123456'));
            }),
        SizedBox(
          height: 16,
        ),
        FlatButton.icon(
          label: Text(
            'Tap to sign in with fingerprint',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontFamily: 'Rubik',
                fontWeight: FontWeight.normal,
                fontSize: 15,
                color: color_accent),
          ),
          icon: Icon(
            Icons.fingerprint,
            color: color_accent,
          ),
          onPressed: () {},
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          'Not registered yet? Register',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Rubik',
            color: text_color_label,
            fontSize: 15,
          ),
        )
      ],
    ));
  }
}
