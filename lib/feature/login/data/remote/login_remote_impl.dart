import 'dart:convert';

import 'package:clean_arch_flutter_demo/feature/login/data/model/user.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/model/user_base_response.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/remote/login_remote.dart';
import 'package:http/http.dart' as http;

class LoginRemoteImpl implements LoginRemote {
  final _host = 'dbf82395-e1b7-48b8-9189-b6e1dd0eb187.mock.pstmn.io';
  final _path = 'user/authenticate';

//  final Map<String, String> _headers = {'Accept': 'application/json'};

  @override
  Future<UserResponse> login(User user) async {
    print('login remote impl');
    final uri = Uri.https(_host, _path);
    final results = await http.post(uri);
    final jsonObject = json.decode(results.body);
    print('res is $jsonObject');
//     UserBaseResponse.fromJson(json.decode(jsonObject));
  return mapToUserResponse(jsonObject);
    /*return UserResponse(
        first_name: user.username,
        last_name: 'rai',
        email: 'abc@gmail.com',
        mobile_number: '123456');*/
  }

  UserResponse mapToUserResponse(Map jsonObject) {
    final user = jsonObject['data'];
    return UserResponse(
      first_name: user['first_name'],
      last_name: user['last_name'],
      email: user['email'],
      mobile_number: user['mobile_number'],
    );
  }
}
