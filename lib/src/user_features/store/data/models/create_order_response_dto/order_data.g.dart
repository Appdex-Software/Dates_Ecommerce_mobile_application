// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderDataImpl _$$OrderDataImplFromJson(Map<String, dynamic> json) =>
    _$OrderDataImpl(
      id: json['id'] as String?,
      productDetails: (json['product_details'] as List<dynamic>?)
          ?.map((e) => ProductDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      orderNumber: json['order_number'] as String?,
      status: json['status'] as String?,
      deliveryImage: json['delivery_image'],
      comment: json['comment'] as String?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$$OrderDataImplToJson(_$OrderDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_details': instance.productDetails,
      'order_number': instance.orderNumber,
      'status': instance.status,
      'delivery_image': instance.deliveryImage,
      'comment': instance.comment,
      'user': instance.user,
    };
