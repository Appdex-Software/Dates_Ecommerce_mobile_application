// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsDtoImpl _$$NewsDtoImplFromJson(Map<String, dynamic> json) =>
    _$NewsDtoImpl(
      statusCode: json['status_code'] as num?,
      message: json['message'] as String?,
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => NewsData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NewsDtoImplToJson(_$NewsDtoImpl instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'meta': instance.meta,
      'pagination': instance.pagination,
      'data': instance.data,
    };