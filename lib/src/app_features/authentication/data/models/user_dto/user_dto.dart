// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user_entity.dart';
import 'user_data.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDto with _$UserDto {
  factory UserDto({
    @JsonKey(name: 'status_code') num? statusCode,
    String? message,
    UserData? data,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);
}

extension UserDtoX on UserDto {
  UserEntity toEntity() =>
      UserEntity(data: data, message: message, statusCode: statusCode);
}
