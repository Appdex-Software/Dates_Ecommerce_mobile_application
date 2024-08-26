// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/order_user_dto/meta.dart';
import '../../data/models/order_user_dto/order_user_data.dart';
import '../../data/models/order_user_dto/pagination.dart';



part 'order_user_entity.freezed.dart';
part 'order_user_entity.g.dart';

@freezed
class OrderUserEntity with _$OrderUserEntity {
  factory OrderUserEntity({
    @JsonKey(name: 'status_code') num? statusCode,
    String? message,
    Meta? meta,
    Pagination? pagination,
    List<OrderUserData>? data,
  }) = _OrderUserEntity;

  factory OrderUserEntity.fromJson(Map<String, dynamic> json) =>
      _$OrderUserEntityFromJson(json);
}
