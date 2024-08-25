// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/news_dto/meta.dart';
import '../../data/models/news_dto/news_data.dart';
import '../../data/models/news_dto/pagination.dart';

part 'news_entity.freezed.dart';
part 'news_entity.g.dart';

@freezed
class NewsEntity with _$NewsEntity {
  factory NewsEntity({
    @JsonKey(name: 'status_code') num? statusCode,
    String? message,
    Meta? meta,
    Pagination? pagination,
    List<NewsData>? data,
  }) = _NewsEntity;

  factory NewsEntity.fromJson(Map<String, dynamic> json) =>
      _$NewsEntityFromJson(json);
}
