// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DateDataImpl _$$DateDataImplFromJson(Map<String, dynamic> json) =>
    _$DateDataImpl(
      id: json['id'] as String?,
      category: json['category'] as String?,
      familiesQuantity: json['families_quantity'] as num?,
      fastingQuantity: json['fasting_quantity'] as num?,
      charitiesQuantity: json['charities_quantity'] as num?,
      name: json['name'] as String?,
      image: json['image'] as String?,
      totalQuantity: json['total_quantity'] as num?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$DateDataImplToJson(_$DateDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'families_quantity': instance.familiesQuantity,
      'fasting_quantity': instance.fastingQuantity,
      'charities_quantity': instance.charitiesQuantity,
      'name': instance.name,
      'image': instance.image,
      'total_quantity': instance.totalQuantity,
      'description': instance.description,
    };
