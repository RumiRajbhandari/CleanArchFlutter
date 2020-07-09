import 'package:clean_arch_flutter_demo/di/service_locator.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/remote/login_remote.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/remote/login_remote_impl.dart';

import 'login_repository.dart';
import 'model/user.dart';
import 'model/user_base_response.dart';

class LoginRepoImpl implements LoginRepository {
  LoginRemoteImpl _loginRemoteImpl = serviceLocator<LoginRemote>();

  @override
  Future<UserResponse> login(User user) {
    return _loginRemoteImpl.login(user);
  }
}
