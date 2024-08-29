// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@HiveType(typeId: 1, adapterName: 'UserInfoAdapter')
@freezed
class User with _$User {
  factory User({
    @HiveField(0) String? id,
    @HiveField(1) String? name,
    @HiveField(2) @JsonKey(name: 'last_login') DateTime? lastLogin,
    @HiveField(3) @JsonKey(name: 'is_superuser') bool? isSuperuser,
    @HiveField(4) String? username,
    @HiveField(5) @JsonKey(name: 'first_name') String? firstName,
    @HiveField(6) @JsonKey(name: 'last_name') String? lastName,
    @HiveField(7) @JsonKey(name: 'is_staff') bool? isStaff,
    @HiveField(8) @JsonKey(name: 'is_active') bool? isActive,
    @HiveField(9) @JsonKey(name: 'date_joined') DateTime? dateJoined,
    @HiveField(10)
    @JsonKey(name: 'registration_status')
    String? registrationStatus,
    @HiveField(11)
    @JsonKey(name: 'registration_datetime')
    dynamic registrationDatetime,
    @HiveField(12) @JsonKey(name: 'reject_comment') dynamic rejectComment,
    @HiveField(13) dynamic country,
    @HiveField(14) dynamic city,
    @HiveField(15) dynamic street,
    @HiveField(16) @JsonKey(name: 'zip_code') dynamic zipCode,
    @HiveField(17) String? role,
    @HiveField(18) @JsonKey(name: 'customer_type') dynamic customerType,
    @HiveField(19) String? email,
    @HiveField(20) @JsonKey(name: 'phone_number') dynamic phoneNumber,
    @HiveField(21) dynamic picture,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
