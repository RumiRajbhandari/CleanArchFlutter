import 'package:clean_arch_flutter_demo/business_logic/models/user.dart';
import 'package:clean_arch_flutter_demo/business_logic/models/user_response.dart';
import 'package:clean_arch_flutter_demo/services/remote/login_remote.dart';

class LoginRemoteImpl implements LoginRemote{

  @override
  Future<UserResponse> login(User user) async{
    print('login remote impl');
    return UserResponse(username: user.username, email: 'abc@gmail.com', phone: '123456');
  }
}