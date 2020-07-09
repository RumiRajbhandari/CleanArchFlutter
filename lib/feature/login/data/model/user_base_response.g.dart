// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_base_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserBaseResponse _$UserBaseResponseFromJson(Map<String, dynamic> json) {
  return UserBaseResponse(
    data: json['data'] == null
        ? null
        : UserResponse.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserBaseResponseToJson(UserBaseResponse instance) =>
    <String, dynamic>{
      'data': instance.data?.toJson(),
    };

UserResponse _$UserResponseFromJson(Map<String, dynamic> json) {
  return UserResponse(
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    email: json['email'] as String,
    mobile_number: json['mobile_number'] as int,
  );
}

Map<String, dynamic> _$UserResponseToJson(UserResponse instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'email': instance.email,
      'mobile_number': instance.mobile_number,
    };
