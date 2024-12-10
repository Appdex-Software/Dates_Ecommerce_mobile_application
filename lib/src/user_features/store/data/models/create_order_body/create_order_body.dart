// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'product.dart';

part 'create_order_body.freezed.dart';
part 'create_order_body.g.dart';

@freezed
class CreateOrderBody with _$CreateOrderBody {
  factory CreateOrderBody({
    String? user,
    String? status,
    num? quantity,
    String? comment,
    @JsonKey(name: "product_details") List<Product>? products,
  }) = _CreateOrderBody;

  factory CreateOrderBody.fromJson(Map<String, dynamic> json) =>
      _$CreateOrderBodyFromJson(json);
}
