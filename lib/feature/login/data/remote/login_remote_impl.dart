import 'package:clean_arch_flutter_demo/feature/login/data/model/user.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/model/user_base_response.dart';
import 'package:clean_arch_flutter_demo/feature/login/data/remote/login_remote.dart';

class LoginRemoteImpl implements LoginRemote {
  final _host = 'dbf82395-e1b7-48b8-9189-b6e1dd0eb187.mock.pstmn.io';
  final _path = 'user/authenticate';

  @override
  Future<UserResponse> login(User user) async {
//    final uri = Uri.https(_host, _path);
//    final results = await http.post(uri);
//    final jsonObject = json.decode(results.body);
//    return mapToUserResponse(jsonObject);
    return Future.value(
        UserResponse(first_name: "abc", last_name: "xyz", mobile_number: 1234, email: "abc"));
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
