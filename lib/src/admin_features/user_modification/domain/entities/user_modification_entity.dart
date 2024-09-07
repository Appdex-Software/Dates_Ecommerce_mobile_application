// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/user_modification_dto/meta.dart';
import '../../data/models/user_modification_dto/pagination.dart';
import '../../data/models/user_modification_dto/user_modification_data.dart';

part 'user_modification_entity.freezed.dart';
part 'user_modification_entity.g.dart';

@freezed
class UserModificationEntity with _$UserModificationEntity {
  factory UserModificationEntity({
    @JsonKey(name: 'status_code') num? statusCode,
    String? message,
    Meta? meta,
    Pagination? pagination,
    List<UserModificationData>? data,
  }) = _UserModificationEntity;

  factory UserModificationEntity.fromJson(Map<String, dynamic> json) =>
      _$UserModificationEntityFromJson(json);
}
