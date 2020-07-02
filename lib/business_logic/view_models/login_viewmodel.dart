import 'package:clean_arch_flutter_demo/business_logic/models/user.dart';
import 'package:clean_arch_flutter_demo/business_logic/models/user_response.dart';
import 'package:clean_arch_flutter_demo/services/login/login_repository.dart';
import 'package:clean_arch_flutter_demo/services/service_locator.dart';
import 'package:flutter/foundation.dart';

class LoginViewModel extends ChangeNotifier{
  final LoginRepository _loginRepository = serviceLocator<LoginRepository>();
  UserResponse userResponse;

  void login(User user) async{
    userResponse = await _loginRepository.login(user);
    notifyListeners();
  }

}