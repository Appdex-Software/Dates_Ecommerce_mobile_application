// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_pdf_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderPdfModelImpl _$$OrderPdfModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderPdfModelImpl(
      startYear: json['start_year'] as num?,
      startMonth: json['start_month'] as num?,
      endYear: json['end_year'] as num?,
      endMonth: json['end_month'] as num?,
      orderId: json['order_id'] as String?,
      customerType: json['customer_type'] as String?,
      customerEmail: json['customer_email'] as String?,
    );

Map<String, dynamic> _$$OrderPdfModelImplToJson(_$OrderPdfModelImpl instance) =>
    <String, dynamic>{
      'start_year': instance.startYear,
      'start_month': instance.startMonth,
      'end_year': instance.endYear,
      'end_month': instance.endMonth,
      'order_id': instance.orderId,
      'customer_type': instance.customerType,
      'customer_email': instance.customerEmail,
    };
