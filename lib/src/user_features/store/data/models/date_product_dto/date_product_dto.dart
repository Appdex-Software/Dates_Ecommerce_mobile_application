// ignore_for_file: invalid_annotation_target

import 'package:date_farm/src/user_features/store/domain/entities/date_product_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'date_data.dart';
import 'meta.dart';
import 'pagination.dart';

part 'date_product_dto.freezed.dart';
part 'date_product_dto.g.dart';

@freezed
class DateProductDto with _$DateProductDto {
  factory DateProductDto({
    @JsonKey(name: 'status_code') num? statusCode,
    String? message,
    Meta? meta,
    Pagination? pagination,
    List<DateData>? data,
  }) = _DateProductDto;

  factory DateProductDto.fromJson(Map<String, dynamic> json) =>
      _$DateProductDtoFromJson(json);
}

extension DateProductDtoX on DateProductDto {
  DateProductEntity toEntity() => DateProductEntity(
      data: data,
      message: message,
      statusCode: statusCode,
      meta: meta,
      pagination: pagination);
}
