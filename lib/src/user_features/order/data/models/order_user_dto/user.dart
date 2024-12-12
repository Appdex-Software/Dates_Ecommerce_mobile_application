import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
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
    @JsonKey(name: 'registration_datetime') DateTime? registrationDatetime,
    @JsonKey(name: 'reject_comment') dynamic rejectComment,
    String? country,
    String? city,
    String? street,
    @JsonKey(name: 'zip_code') String? zipCode,
    String? role,
    @JsonKey(name: 'customer_type') String? customerType,
    String? email,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    dynamic picture,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
