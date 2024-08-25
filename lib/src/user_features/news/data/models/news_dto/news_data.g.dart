// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsDataImpl _$$NewsDataImplFromJson(Map<String, dynamic> json) =>
    _$NewsDataImpl(
      id: json['id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] as String?,
      subject: json['subject'] as String?,
      body: json['body'] as String?,
      image: json['image'] as String?,
      createdBy: json['created_by'] as String?,
      updatedBy: json['updated_by'] as String?,
    );

Map<String, dynamic> _$$NewsDataImplToJson(_$NewsDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt,
      'subject': instance.subject,
      'body': instance.body,
      'image': instance.image,
      'created_by': instance.createdBy,
      'updated_by': instance.updatedBy,
    };
