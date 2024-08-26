// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_detail.dart';

part 'order_data.freezed.dart';
part 'order_data.g.dart';

@freezed
class OrderData with _$OrderData {
  factory OrderData({
    String? id,
    @JsonKey(name: 'product_details') List<ProductDetail>? productDetails,
    @JsonKey(name: 'order_number') String? orderNumber,
    String? status,
    @JsonKey(name: 'delivery_image') dynamic deliveryImage,
    String? comment,
    String? user,
  }) = _OrderData;

  factory OrderData.fromJson(Map<String, dynamic> json) => _$OrderDataFromJson(json);
}
