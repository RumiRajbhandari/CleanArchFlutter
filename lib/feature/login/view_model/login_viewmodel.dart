import 'package:clean_arch_flutter_demo/di/service_locator.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/login_repository.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/model/user.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/model/user_base_response.dart';
import 'package:flutter/foundation.dart';

class LoginViewModel extends ChangeNotifier{
  final LoginRepository _loginRepository = serviceLocator<LoginRepository>();
  UserResponse userResponse;

  void login(User user) async{
    userResponse = await _loginRepository.login(user);
    print('user response in vm is ${userResponse.first_name}');
    notifyListeners();
  }

}