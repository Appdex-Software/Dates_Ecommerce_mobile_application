// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/create_order_response_entity.dart';
import 'order_data.dart';

part 'create_order_response_dto.freezed.dart';
part 'create_order_response_dto.g.dart';

@freezed
class CreateOrderResponseDto with _$CreateOrderResponseDto {
  factory CreateOrderResponseDto({
    @JsonKey(name: 'status_code') num? statusCode,
    String? message,
    OrderData? data,
  }) = _CreateOrderResponseDto;

  factory CreateOrderResponseDto.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderResponseDtoFromJson(json);
}

extension CreateOrderResponseDtoX on CreateOrderResponseDto {
  CreateOrderResponseEntity toEntity() => CreateOrderResponseEntity(
        data: data,
        message: message,
        statusCode: statusCode,
      );
}
