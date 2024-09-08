// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product_detail.dart';

part 'order_user_data.freezed.dart';
part 'order_user_data.g.dart';

@freezed
class OrderUserData with _$OrderUserData {
  factory OrderUserData({
    String? id,
    @JsonKey(name: 'order_date') DateTime? orderDate,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'order_number') String? orderNumber,
    String? status,
    @JsonKey(name: 'delivery_image') dynamic deliveryImage,
    String? comment,
    String? user,
    @JsonKey(name: 'product_details') List<ProductDetail>? productDetails,
  }) = _OrderUserData;

  factory OrderUserData.fromJson(Map<String, dynamic> json) => _$OrderUserDataFromJson(json);
}
