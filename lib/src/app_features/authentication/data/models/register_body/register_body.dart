// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_body.freezed.dart';
part 'register_body.g.dart';

@freezed
class RegisterBody with _$RegisterBody {
  factory RegisterBody({
    String? name,
    String? username,
    String? email,
    String? role,
    String? password,
    String? country,
    String? city,
    String? street,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'zip_code') String? zipCode,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'is_active') String? isActive,
  }) = _RegisterBody;

  factory RegisterBody.fromJson(Map<String, dynamic> json) =>
      _$RegisterBodyFromJson(json);
}
