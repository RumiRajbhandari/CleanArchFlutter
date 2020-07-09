import 'package:clean_arch_flutter_demo/feature/login/data/model/user.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/model/user_base_response.dart';

abstract class LoginRemote {
  Future<UserResponse> login(User user);
}