// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user_authentication_error_entity.dart';
import 'user_error.dart';

part 'user_authentication_error_dto.freezed.dart';
part 'user_authentication_error_dto.g.dart';

@freezed
class UserAuthenticationErrorDto with _$UserAuthenticationErrorDto {
  factory UserAuthenticationErrorDto({
    @JsonKey(name: 'status_code') num? statusCode,
    String? message,
    UserError? error,
  }) = _UserAuthenticationErrorDto;

  factory UserAuthenticationErrorDto.fromJson(Map<String, dynamic> json) =>
      _$UserAuthenticationErrorDtoFromJson(json);
}

extension UserAuthenticationErrorDtoX on UserAuthenticationErrorDto {
  UserAuthenticationErrorEntity toEntity() =>
      UserAuthenticationErrorEntity(error: error, message: message, statusCode: statusCode);
}
