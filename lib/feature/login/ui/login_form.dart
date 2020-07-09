
import 'package:clean_arch_flutter_demo/feature/login/data/model/user.dart';
import 'package:clean_arch_flutter_demo/feature/login/view_model/login_viewmodel.dart';
import 'package:clean_arch_flutter_demo/feature/widgets/rounded_button.dart';
import 'package:clean_arch_flutter_demo/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'login_text_field.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Consumer<LoginViewModel>(
      builder: (context, viewModel, _)=> Container(
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
                  onPress: () async {
                    bool isLoginSuccess = await viewModel.login(User(username: 'test user', password: '123456'));
                    if(isLoginSuccess)
                      Navigator.pushReplacementNamed(context, '/home');
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
          )),
    );

  }
}
