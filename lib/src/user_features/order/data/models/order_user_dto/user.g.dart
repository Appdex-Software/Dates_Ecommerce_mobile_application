// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      lastLogin: json['last_login'] == null
          ? null
          : DateTime.parse(json['last_login'] as String),
      isSuperuser: json['is_superuser'] as bool?,
      username: json['username'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      isStaff: json['is_staff'] as bool?,
      isActive: json['is_active'] as bool?,
      dateJoined: json['date_joined'] == null
          ? null
          : DateTime.parse(json['date_joined'] as String),
      registrationStatus: json['registration_status'] as String?,
      registrationDatetime: json['registration_datetime'] == null
          ? null
          : DateTime.parse(json['registration_datetime'] as String),
      rejectComment: json['reject_comment'],
      country: json['country'] as String?,
      city: json['city'] as String?,
      street: json['street'] as String?,
      zipCode: json['zip_code'] as String?,
      role: json['role'] as String?,
      customerType: json['customer_type'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone_number'] as String?,
      picture: json['picture'],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'last_login': instance.lastLogin?.toIso8601String(),
      'is_superuser': instance.isSuperuser,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'is_staff': instance.isStaff,
      'is_active': instance.isActive,
      'date_joined': instance.dateJoined?.toIso8601String(),
      'registration_status': instance.registrationStatus,
      'registration_datetime': instance.registrationDatetime?.toIso8601String(),
      'reject_comment': instance.rejectComment,
      'country': instance.country,
      'city': instance.city,
      'street': instance.street,
      'zip_code': instance.zipCode,
      'role': instance.role,
      'customer_type': instance.customerType,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'picture': instance.picture,
    };
