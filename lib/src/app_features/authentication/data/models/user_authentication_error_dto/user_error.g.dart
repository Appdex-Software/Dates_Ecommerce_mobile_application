// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserErrorImpl _$$UserErrorImplFromJson(Map<String, dynamic> json) =>
    _$UserErrorImpl(
      password: (json['password'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      username: (json['username'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      email:
          (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
      phoneNumber: (json['phone_number'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$UserErrorImplToJson(_$UserErrorImpl instance) =>
    <String, dynamic>{
      'password': instance.password,
      'username': instance.username,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
    };
