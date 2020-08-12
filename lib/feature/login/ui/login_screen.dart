import 'package:clean_arch_flutter_demo/di/service_locator.dart';
import 'package:clean_arch_flutter_demo/feature/login/view_model/login_viewmodel.dart';
import 'package:clean_arch_flutter_demo/res/colors.dart';
import 'package:clean_arch_flutter_demo/utils/response_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'login_form.dart';

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
    return ChangeNotifierProvider<LoginViewModel>(
      create: (BuildContext context) => viewModel,
      child: Consumer<LoginViewModel>(
        builder: (context, viewModel, _) => Scaffold(
          backgroundColor: white_fffff,
          body: SafeArea(
              child: Column(
            children: <Widget>[
              observeLogin(),
              Padding(
                padding: const EdgeInsets.fromLTRB(32.0, 26, 32, 32),
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
                      style:
                          TextStyle(fontSize: 15, fontFamily: 'Rubik', color: text_color_secondary),
                    ),
                    SizedBox(
                      height: 64,
                    ),
                    LoginForm(viewModel)
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }

  Widget observeLogin() {
    switch (viewModel.loginUseCase.state) {
      case ResponseState.LOADING:
        return LinearProgressIndicator(
          backgroundColor: color_accent,
        );
      case ResponseState.COMPLETE:
        WidgetsBinding.instance.addPostFrameCallback((_) {
          Navigator.pushReplacementNamed(context, '/home');
        });
        break;
      case ResponseState.ERROR:
        break;
    }
    return SizedBox(
      height: 6,
    );
  }
}
