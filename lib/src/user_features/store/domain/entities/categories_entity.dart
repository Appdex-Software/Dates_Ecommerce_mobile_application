// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/categories_dto/category_data.dart';
import '../../data/models/categories_dto/meta.dart';

part 'categories_entity.freezed.dart';
part 'categories_entity.g.dart';

@freezed
class CategoriesEntity with _$CategoriesEntity {
  factory CategoriesEntity({
    @JsonKey(name: 'status_code') num? statusCode,
    String? message,
    Meta? meta,
    List<CategoryData>? data,
  }) = _CategoriesEntity;

  factory CategoriesEntity.fromJson(Map<String, dynamic> json) =>
      _$CategoriesEntityFromJson(json);
}
