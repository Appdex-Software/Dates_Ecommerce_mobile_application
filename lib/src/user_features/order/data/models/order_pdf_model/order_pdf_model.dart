import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_pdf_model.freezed.dart';
part 'order_pdf_model.g.dart';

@freezed
class OrderPdfModel with _$OrderPdfModel {
  factory OrderPdfModel({
    @JsonKey(name: 'start_year') num? startYear,
    @JsonKey(name: 'start_month') num? startMonth,
    @JsonKey(name: 'end_year') num? endYear,
    @JsonKey(name: 'end_month') num? endMonth,
    @JsonKey(name: 'order_id') String? orderId,
    @JsonKey(name: 'customer_type') String? customerType,
    @JsonKey(name: 'customer_email') String? customerEmail,
  }) = _OrderPdfModel;

  factory OrderPdfModel.fromJson(Map<String, dynamic> json) =>
      _$OrderPdfModelFromJson(json);
}
