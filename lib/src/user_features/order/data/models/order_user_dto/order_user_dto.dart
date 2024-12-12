// ignore_for_file: invalid_annotation_target

import 'package:date_farm/src/user_features/order/domain/entities/order_user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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

extension OrderUserDtox on OrderUserDto {
  OrderUserEntity toEntity() => OrderUserEntity(
        message: message,
        statusCode: statusCode,
        meta: meta,
        pagination: pagination,
        data: data,
      );
}
