import 'package:clean_arch_flutter_demo/di/service_locator.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/login_repository.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/model/user.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/model/user_base_response.dart';
import 'package:clean_arch_flutter_demo/utils/response.dart';
import 'package:flutter/foundation.dart';

class LoginViewModel extends ChangeNotifier {
  final LoginRepository _loginRepository = serviceLocator<LoginRepository>();
  UserResponse userResponse;

  Response<bool> loginUseCase = Response<bool>();

  void _setLoginUseCase(Response response) {
    loginUseCase = response;
    notifyListeners();
  }

  Future<void> login(User user) async {
    _setLoginUseCase(Response.loading<bool>());
    try {
      _loginRepository.login(user).then((value) => _setLoginUseCase(Response.complete<bool>(true)));
    } catch (exception) {
      _setLoginUseCase(Response.error<bool>(exception.toString()));
    }
  }
}
