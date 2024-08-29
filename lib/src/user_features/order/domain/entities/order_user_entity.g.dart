// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderUserEntityImpl _$$OrderUserEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$OrderUserEntityImpl(
      statusCode: json['status_code'] as num?,
      message: json['message'] as String?,
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => OrderUserData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderUserEntityImplToJson(
        _$OrderUserEntityImpl instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'meta': instance.meta,
      'pagination': instance.pagination,
      'data': instance.data,
    };
