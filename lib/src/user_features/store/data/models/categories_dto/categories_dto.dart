// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/categories_entity.dart';
import 'category_data.dart';
import 'meta.dart';

part 'categories_dto.freezed.dart';
part 'categories_dto.g.dart';

@freezed
class CategoriesDto with _$CategoriesDto {
  factory CategoriesDto({
    @JsonKey(name: 'status_code') num? statusCode,
    String? message,
    Meta? meta,
    List<CategoryData>? data,
  }) = _CategoriesDto;

  factory CategoriesDto.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDtoFromJson(json);
}

extension CategoriesDtoX on CategoriesDto {
  CategoriesEntity toEntity() => CategoriesEntity(
        data: data,
        message: message,
        statusCode: statusCode,
        meta: meta
      );
}
