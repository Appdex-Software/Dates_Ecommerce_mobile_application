// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailImpl _$$ProductDetailImplFromJson(Map<String, dynamic> json) =>
    _$ProductDetailImpl(
      id: json['id'] as String?,
      productName: json['product_name'] as String?,
      quantity: json['quantity'] as num?,
      product: json['product'] as String?,
    );

Map<String, dynamic> _$$ProductDetailImplToJson(_$ProductDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_name': instance.productName,
      'quantity': instance.quantity,
      'product': instance.product,
    };
