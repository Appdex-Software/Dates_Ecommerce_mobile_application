// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderUserDataImpl _$$OrderUserDataImplFromJson(Map<String, dynamic> json) =>
    _$OrderUserDataImpl(
      id: json['id'] as String?,
      orderDate: json['order_date'] == null
          ? null
          : DateTime.parse(json['order_date'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      orderNumber: json['order_number'] as String?,
      status: json['status'] as String?,
      deliveryImage: json['delivery_image'],
      comment: json['comment'] as String?,
      productDetails: (json['product_details'] as List<dynamic>?)
          ?.map((e) => ProductDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderUserDataImplToJson(_$OrderUserDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_date': instance.orderDate?.toIso8601String(),
      'user': instance.user,
      'order_number': instance.orderNumber,
      'status': instance.status,
      'delivery_image': instance.deliveryImage,
      'comment': instance.comment,
      'product_details': instance.productDetails,
    };
