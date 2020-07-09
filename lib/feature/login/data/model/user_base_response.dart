import 'package:json_annotation/json_annotation.dart';

part 'user_base_response.g.dart';

@JsonSerializable(explicitToJson: true)
class UserBaseResponse{
  UserResponse data;

  UserBaseResponse({this.data});

  factory UserBaseResponse.fromJson(Map<String, dynamic> json) =>
      _$UserBaseResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UserBaseResponseToJson(this);
}

@JsonSerializable(explicitToJson: true)
class UserResponse{
  String first_name;
  String last_name;
  String email;
  int mobile_number;

  UserResponse({this.first_name, this.last_name, this.email, this.mobile_number});

  factory UserResponse.fromJson(Map<String, dynamic> json) => _$UserResponseFromJson(json);
  Map<String, dynamic> toJson() => _$UserResponseToJson(this);

}