import 'package:clean_arch_flutter_demo/feature/login/data/model/user.dart';
import 'package:clean_arch_flutter_demo/feature/login/view_model/login_viewmodel.dart';
import 'package:clean_arch_flutter_demo/feature/widgets/rounded_button.dart';
import 'package:clean_arch_flutter_demo/res/colors.dart';
import 'package:flutter/material.dart';

import 'login_text_field.dart';

class LoginForm extends StatefulWidget {
  final LoginViewModel viewModel;

  LoginForm(this.viewModel);

  @override
  _LoginFormState createState() => _LoginFormState(viewModel);
}

class _LoginFormState extends State<LoginForm> {
  final LoginViewModel viewModel;
  final _formKey = GlobalKey<FormState>();
  String _phone, _password;

  _LoginFormState(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Form(
      key: _formKey,
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
              validator: (String value) {
                print('phone no is ${value.length}');
                if (value.length < 1) {
                  return 'Field should not be empy';
                } else if (value.length != 10) {
                  return 'Please enter valid phone number';
                } else
                  return null;
              },
              onSaved: (String value) {
                _phone = value;
              },
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
              validator: (String value) {
                print('pin is $value');
                if (value.length < 1) {
                  return 'Pin should not be empty';
                } else {
                  return null;
                }
              },
              onSaved: (String value) {
                _password = value;
                print('on save clicked');
              },
              isPassword: true,
              isUserName: false),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
            child: Text(
              'FORGOT PIN?',
              textAlign: TextAlign.end,
              style: TextStyle(color: color_accent, fontSize: 12, fontFamily: 'Rubik'),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          RoundedButton(
              text: 'Sign In',
              onPress: () async {
                if (_validate()) {
                  viewModel.login(User(username: _phone, password: _password));
                }
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
      ),
    ));
  }

  bool _validate() {
    if (_formKey.currentState.validate()) {
      return true;
    } else
      return false;
  }
}
