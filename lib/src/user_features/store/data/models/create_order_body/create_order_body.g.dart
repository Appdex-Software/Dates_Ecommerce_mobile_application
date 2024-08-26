// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateOrderBodyImpl _$$CreateOrderBodyImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateOrderBodyImpl(
      user: json['user'] as String?,
      status: json['status'] as String?,
      quantity: json['quantity'] as num?,
      comment: json['comment'] as String?,
      products: (json['products'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CreateOrderBodyImplToJson(
        _$CreateOrderBodyImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'status': instance.status,
      'quantity': instance.quantity,
      'comment': instance.comment,
      'products': instance.products,
    };
