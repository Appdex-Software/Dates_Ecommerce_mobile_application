// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/user_authentication_error_dto/user_error.dart';


part 'user_authentication_error_entity.freezed.dart';
part 'user_authentication_error_entity.g.dart';

@freezed
class UserAuthenticationErrorEntity with _$UserAuthenticationErrorEntity {
  factory UserAuthenticationErrorEntity({
    @JsonKey(name: 'status_code') num? statusCode,
    String? message,
    UserError? error,
  }) = _UserAuthenticationErrorEntity;

  factory UserAuthenticationErrorEntity.fromJson(Map<String, dynamic> json) =>
      _$UserAuthenticationErrorEntityFromJson(json);
}
