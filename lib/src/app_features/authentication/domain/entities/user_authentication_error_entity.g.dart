// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_authentication_error_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAuthenticationErrorEntityImpl
    _$$UserAuthenticationErrorEntityImplFromJson(Map<String, dynamic> json) =>
        _$UserAuthenticationErrorEntityImpl(
          statusCode: json['status_code'] as num?,
          message: json['message'] as String?,
          error: json['error'] == null
              ? null
              : UserError.fromJson(json['error'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$UserAuthenticationErrorEntityImplToJson(
        _$UserAuthenticationErrorEntityImpl instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };
