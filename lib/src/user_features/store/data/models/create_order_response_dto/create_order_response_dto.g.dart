// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderResponseDtoImpl _$$CreateOrderResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrderResponseDtoImpl(
      statusCode: json['status_code'] as num?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OrderData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateOrderResponseDtoImplToJson(
        _$CreateOrderResponseDtoImpl instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
    };
