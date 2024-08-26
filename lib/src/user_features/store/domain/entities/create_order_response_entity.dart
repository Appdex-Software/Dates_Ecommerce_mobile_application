// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/create_order_response_dto/order_data.dart';

part 'create_order_response_entity.freezed.dart';
part 'create_order_response_entity.g.dart';

@freezed
class CreateOrderResponseEntity with _$CreateOrderResponseEntity {
  factory CreateOrderResponseEntity({
    @JsonKey(name: 'status_code') num? statusCode,
    String? message,
    OrderData? data,
  }) = _CreateOrderResponseEntity;

  factory CreateOrderResponseEntity.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseEntityFromJson(json);
}

