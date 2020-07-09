import 'model/user.dart';
import 'model/user_base_response.dart';

abstract class LoginRepository{
  Future<UserResponse> login(User user);
}