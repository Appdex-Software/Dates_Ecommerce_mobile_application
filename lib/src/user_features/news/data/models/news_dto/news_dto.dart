// ignore_for_file: invalid_annotation_target

import 'package:date_farm/src/user_features/news/domain/entities/news_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'news_data.dart';
import 'meta.dart';
import 'pagination.dart';

part 'news_dto.freezed.dart';
part 'news_dto.g.dart';

@freezed
class NewsDto with _$NewsDto {
  factory NewsDto({
    @JsonKey(name: 'status_code') num? statusCode,
    String? message,
    Meta? meta,
    Pagination? pagination,
    List<NewsData>? data,
  }) = _NewsDto;

  factory NewsDto.fromJson(Map<String, dynamic> json) =>
      _$NewsDtoFromJson(json);
}

extension NewsDtoX on NewsDto {
  NewsEntity toEntity() => NewsEntity(
      data: data,
      message: message,
      statusCode: statusCode,
      meta: meta,
      pagination: pagination);
}
