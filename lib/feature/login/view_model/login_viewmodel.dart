import 'package:clean_arch_flutter_demo/di/service_locator.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/login_repository.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/model/user.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/model/user_base_response.dart';
import 'package:flutter/foundation.dart';

class LoginViewModel extends ChangeNotifier{
  final LoginRepository _loginRepository = serviceLocator<LoginRepository>();
  UserResponse userResponse;
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  set isLoading(bool status){
    _isLoading = status;
    notifyListeners();
  }

  Future<bool> login(User user) async{
    isLoading = true;
    userResponse = await _loginRepository.login(user);
    isLoading = false;
    return true;
  }

}