// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoriesDtoImpl _$$CategoriesDtoImplFromJson(Map<String, dynamic> json) =>
    _$CategoriesDtoImpl(
      statusCode: json['status_code'] as num?,
      message: json['message'] as String?,
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CategoriesDtoImplToJson(_$CategoriesDtoImpl instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'meta': instance.meta,
      'data': instance.data,
    };
