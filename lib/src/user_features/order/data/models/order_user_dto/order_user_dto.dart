// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/order_user_entity.dart';
import 'order_user_data.dart';
import 'meta.dart';
import 'pagination.dart';

part 'order_user_dto.freezed.dart';
part 'order_user_dto.g.dart';

@freezed
class OrderUserDto with _$OrderUserDto {
  factory OrderUserDto({
    @JsonKey(name: 'status_code') num? statusCode,
    String? message,
    Meta? meta,
    Pagination? pagination,
    List<OrderUserData>? data,
  }) = _OrderUserDto;

  factory OrderUserDto.fromJson(Map<String, dynamic> json) =>
      _$OrderUserDtoFromJson(json);
}

extension OrderUserDtoX on OrderUserDto {
  OrderUserEntity toEntity() => OrderUserEntity(
      data: data,
      message: message,
      statusCode: statusCode,
      meta: meta,
      pagination: pagination);
}
