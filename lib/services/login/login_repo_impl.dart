import 'package:clean_arch_flutter_demo/business_logic/models/user.dart';
import 'package:clean_arch_flutter_demo/business_logic/models/user_response.dart';
import 'package:clean_arch_flutter_demo/services/login/login_repository.dart';
import 'package:clean_arch_flutter_demo/services/remote/login_remote.dart';
import 'package:clean_arch_flutter_demo/services/remote/login_remote_impl.dart';
import 'package:clean_arch_flutter_demo/services/service_locator.dart';

class LoginRepoImpl implements LoginRepository{
  LoginRemoteImpl _loginRemoteImpl = serviceLocator<LoginRemote>();
  @override
  Future<UserResponse> login(User user) {
    return _loginRemoteImpl.login(user);
  }

}