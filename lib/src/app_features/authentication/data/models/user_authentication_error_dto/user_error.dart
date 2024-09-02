// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_error.freezed.dart';
part 'user_error.g.dart';

@freezed
class UserError with _$UserError {
  factory UserError({
    List<String>? password,
    List<String>? username,
    List<String>? email,
    @JsonKey(name: 'phone_number') List<String>? phoneNumber,
  }) = _UserError;

  factory UserError.fromJson(Map<String, dynamic> json) =>
      _$UserErrorFromJson(json);
}
