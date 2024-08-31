// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_data.freezed.dart';
part 'news_data.g.dart';

@freezed
class NewsData with _$NewsData {
  factory NewsData({
    String? id,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    String? subject,
    String? body,
    String? image,
    @JsonKey(name: 'created_by') String? createdBy,
    @JsonKey(name: 'updated_by') String? updatedBy,
  }) = _NewsData;

  factory NewsData.fromJson(Map<String, dynamic> json) =>
      _$NewsDataFromJson(json);
}
