// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DateCartItemyAdapter extends TypeAdapter<DateData> {
  @override
  final int typeId = 2;

  @override
  DateData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DateData(
      id: fields[0] as String?,
      category: fields[1] as String?,
      familiesQuantity: fields[2] as num?,
      fastingQuantity: fields[3] as num?,
      charitiesQuantity: fields[4] as num?,
      name: fields[5] as String?,
      image: fields[6] as String?,
      totalQuantity: fields[7] as num?,
      description: fields[8] as String?,
      quantity: fields[9] as int,
    );
  }

  @override
  void write(BinaryWriter writer, DateData obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.category)
      ..writeByte(2)
      ..write(obj.familiesQuantity)
      ..writeByte(3)
      ..write(obj.fastingQuantity)
      ..writeByte(4)
      ..write(obj.charitiesQuantity)
      ..writeByte(5)
      ..write(obj.name)
      ..writeByte(6)
      ..write(obj.image)
      ..writeByte(7)
      ..write(obj.totalQuantity)
      ..writeByte(8)
      ..write(obj.description)
      ..writeByte(9)
      ..write(obj.quantity);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DateCartItemyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
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
      'quantity': instance.quantity,
    };
