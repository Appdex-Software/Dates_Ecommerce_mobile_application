// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_modification_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModificationDataImpl _$$UserModificationDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserModificationDataImpl(
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
      registrationDatetime: json['registration_datetime'],
      rejectComment: json['reject_comment'],
      country: json['country'],
      city: json['city'],
      street: json['street'],
      zipCode: json['zip_code'],
      role: json['role'] as String?,
      customerType: json['customer_type'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phone_number'],
      picture: json['picture'],
    );

Map<String, dynamic> _$$UserModificationDataImplToJson(
        _$UserModificationDataImpl instance) =>
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
      'registration_datetime': instance.registrationDatetime,
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
