// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/user_modification_entity.dart';
import 'user_modification_data.dart';
import 'meta.dart';
import 'pagination.dart';

part 'user_modification_dto.freezed.dart';
part 'user_modification_dto.g.dart';

@freezed
class UserModificationDto with _$UserModificationDto {
  factory UserModificationDto({
    @JsonKey(name: 'status_code') num? statusCode,
    String? message,
    Meta? meta,
    Pagination? pagination,
    List<UserModificationData>? data,
  }) = _UserModificationDto;

  factory UserModificationDto.fromJson(Map<String, dynamic> json) =>
      _$UserModificationDtoFromJson(json);
}

extension UserModificationDtoX on UserModificationDto {
  UserModificationEntity toEntity() => UserModificationEntity(
      data: data,
      message: message,
      statusCode: statusCode,
      meta: meta,
      pagination: pagination);
}
