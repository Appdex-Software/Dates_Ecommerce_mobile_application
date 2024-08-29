// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/date_product_dto/date_data.dart';
import '../../data/models/date_product_dto/meta.dart';
import '../../data/models/date_product_dto/pagination.dart';

part 'date_product_entity.freezed.dart';
part 'date_product_entity.g.dart';

@freezed
class DateProductEntity with _$DateProductEntity {
  factory DateProductEntity({
    @JsonKey(name: 'status_code') num? statusCode,
    String? message,
    Meta? meta,
    Pagination? pagination,
    List<DateData>? data,
  }) = _DateProductEntity;

  factory DateProductEntity.fromJson(Map<String, dynamic> json) =>
      _$DateProductEntityFromJson(json);
}
