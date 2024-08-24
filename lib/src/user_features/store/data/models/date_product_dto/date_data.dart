// ignore_for_file: invalid_annotation_target

import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'date_data.freezed.dart';
part 'date_data.g.dart';
@HiveType(typeId: 2, adapterName: "DateCartItemyAdapter")

@freezed
class DateData with _$DateData, EquatableMixin {
  DateData._();
  factory DateData({
    @HiveField(0) String? id,
    @HiveField(1) String? category,
    @HiveField(2) @JsonKey(name: 'families_quantity') num? familiesQuantity,
    @HiveField(3) @JsonKey(name: 'fasting_quantity') num? fastingQuantity,
    @HiveField(4) @JsonKey(name: 'charities_quantity') num? charitiesQuantity,
    @HiveField(5) String? name,
    @HiveField(6) String? image,
    @HiveField(7) @JsonKey(name: 'total_quantity') num? totalQuantity,
    @HiveField(8) String? description,
    @HiveField(9) @Default(0) int quantity
  }) = _DateData;

  factory DateData.fromJson(Map<String, dynamic> json) => _$DateDataFromJson(json);
  @override
  List<Object?> get props => [id];
}
