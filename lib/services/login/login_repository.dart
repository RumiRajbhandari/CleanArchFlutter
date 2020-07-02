import 'package:clean_arch_flutter_demo/business_logic/models/user.dart';
import 'package:clean_arch_flutter_demo/business_logic/models/user_response.dart';

abstract class LoginRepository{
  Future<UserResponse> login(User user);
}