// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'date_data.freezed.dart';
part 'date_data.g.dart';

@freezed
class DateData with _$DateData {
  factory DateData({
    String? id,
    String? category,
    @JsonKey(name: 'families_quantity') num? familiesQuantity,
    @JsonKey(name: 'fasting_quantity') num? fastingQuantity,
    @JsonKey(name: 'charities_quantity') num? charitiesQuantity,
    String? name,
    String? image,
    @JsonKey(name: 'total_quantity') num? totalQuantity,
    String? description,
  }) = _DateData;

  factory DateData.fromJson(Map<String, dynamic> json) => _$DateDataFromJson(json);
}
