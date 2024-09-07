// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_modification_data.freezed.dart';
part 'user_modification_data.g.dart';

@freezed
class UserModificationData with _$UserModificationData {
  factory UserModificationData({
    String? id,
    String? name,
    @JsonKey(name: 'last_login') DateTime? lastLogin,
    @JsonKey(name: 'is_superuser') bool? isSuperuser,
    String? username,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'is_staff') bool? isStaff,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'date_joined') DateTime? dateJoined,
    @JsonKey(name: 'registration_status') String? registrationStatus,
    @JsonKey(name: 'registration_datetime') dynamic registrationDatetime,
    @JsonKey(name: 'reject_comment') dynamic rejectComment,
    dynamic country,
    dynamic city,
    dynamic street,
    @JsonKey(name: 'zip_code') dynamic zipCode,
    String? role,
    @JsonKey(name: 'customer_type') String? customerType,
    String? email,
    @JsonKey(name: 'phone_number') dynamic phoneNumber,
    dynamic picture,
  }) = _UserModificationData;

  factory UserModificationData.fromJson(Map<String, dynamic> json) => _$UserModificationDataFromJson(json);
}


