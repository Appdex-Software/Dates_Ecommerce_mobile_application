// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterBodyImpl _$$RegisterBodyImplFromJson(Map<String, dynamic> json) =>
    _$RegisterBodyImpl(
      name: json['name'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      password: json['password'] as String?,
      country: json['country'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      zipCode: json['zip_code'] as String?,
      phoneNumber: json['phone_number'] as String?,
      isActive: json['is_active'] as String?,
    );

Map<String, dynamic> _$$RegisterBodyImplToJson(_$RegisterBodyImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'role': instance.role,
      'password': instance.password,
      'country': instance.country,
      'city': instance.city,
      'street': instance.street,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'zip_code': instance.zipCode,
      'phone_number': instance.phoneNumber,
      'is_active': instance.isActive,
    };
