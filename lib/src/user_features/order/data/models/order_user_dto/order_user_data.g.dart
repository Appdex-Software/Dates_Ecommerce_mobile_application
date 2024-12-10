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
      userName: json['user_name'] as String?,
      orderNumber: json['order_number'] as String?,
      status: json['status'] as String?,
      deliveryImage: json['delivery_image'],
      customerType: json['customer_type'],
      comment: json['comment'] as String?,
      user: json['user'] as String?,
      productDetails: (json['product_details'] as List<dynamic>?)
          ?.map((e) => ProductDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OrderUserDataImplToJson(_$OrderUserDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_date': instance.orderDate?.toIso8601String(),
      'user_name': instance.userName,
      'order_number': instance.orderNumber,
      'status': instance.status,
      'delivery_image': instance.deliveryImage,
      'customer_type': instance.customerType,
      'comment': instance.comment,
      'user': instance.user,
      'product_details': instance.productDetails,
    };
