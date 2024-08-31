// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderData _$OrderDataFromJson(Map<String, dynamic> json) {
  return _OrderData.fromJson(json);
}

/// @nodoc
mixin _$OrderData {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_details')
  List<ProductDetail>? get productDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_number')
  String? get orderNumber => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_image')
  dynamic get deliveryImage => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDataCopyWith<OrderData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDataCopyWith<$Res> {
  factory $OrderDataCopyWith(OrderData value, $Res Function(OrderData) then) =
      _$OrderDataCopyWithImpl<$Res, OrderData>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'product_details') List<ProductDetail>? productDetails,
      @JsonKey(name: 'order_number') String? orderNumber,
      String? status,
      @JsonKey(name: 'delivery_image') dynamic deliveryImage,
      String? comment,
      String? user});
}

/// @nodoc
class _$OrderDataCopyWithImpl<$Res, $Val extends OrderData>
    implements $OrderDataCopyWith<$Res> {
  _$OrderDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productDetails = freezed,
    Object? orderNumber = freezed,
    Object? status = freezed,
    Object? deliveryImage = freezed,
    Object? comment = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productDetails: freezed == productDetails
          ? _value.productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as List<ProductDetail>?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryImage: freezed == deliveryImage
          ? _value.deliveryImage
          : deliveryImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OrderDataImplCopyWith<$Res>
    implements $OrderDataCopyWith<$Res> {
  factory _$$OrderDataImplCopyWith(
          _$OrderDataImpl value, $Res Function(_$OrderDataImpl) then) =
      __$$OrderDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'product_details') List<ProductDetail>? productDetails,
      @JsonKey(name: 'order_number') String? orderNumber,
      String? status,
      @JsonKey(name: 'delivery_image') dynamic deliveryImage,
      String? comment,
      String? user});
}

/// @nodoc
class __$$OrderDataImplCopyWithImpl<$Res>
    extends _$OrderDataCopyWithImpl<$Res, _$OrderDataImpl>
    implements _$$OrderDataImplCopyWith<$Res> {
  __$$OrderDataImplCopyWithImpl(
      _$OrderDataImpl _value, $Res Function(_$OrderDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productDetails = freezed,
    Object? orderNumber = freezed,
    Object? status = freezed,
    Object? deliveryImage = freezed,
    Object? comment = freezed,
    Object? user = freezed,
  }) {
    return _then(_$OrderDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productDetails: freezed == productDetails
          ? _value._productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as List<ProductDetail>?,
      orderNumber: freezed == orderNumber
          ? _value.orderNumber
          : orderNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryImage: freezed == deliveryImage
          ? _value.deliveryImage
          : deliveryImage // ignore: cast_nullable_to_non_nullable
              as dynamic,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OrderDataImpl implements _OrderData {
  _$OrderDataImpl(
      {this.id,
      @JsonKey(name: 'product_details')
      final List<ProductDetail>? productDetails,
      @JsonKey(name: 'order_number') this.orderNumber,
      this.status,
      @JsonKey(name: 'delivery_image') this.deliveryImage,
      this.comment,
      this.user})
      : _productDetails = productDetails;

  factory _$OrderDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderDataImplFromJson(json);

  @override
  final String? id;
  final List<ProductDetail>? _productDetails;
  @override
  @JsonKey(name: 'product_details')
  List<ProductDetail>? get productDetails {
    final value = _productDetails;
    if (value == null) return null;
    if (_productDetails is EqualUnmodifiableListView) return _productDetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'order_number')
  final String? orderNumber;
  @override
  final String? status;
  @override
  @JsonKey(name: 'delivery_image')
  final dynamic deliveryImage;
  @override
  final String? comment;
  @override
  final String? user;

  @override
  String toString() {
    return 'OrderData(id: $id, productDetails: $productDetails, orderNumber: $orderNumber, status: $status, deliveryImage: $deliveryImage, comment: $comment, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._productDetails, _productDetails) &&
            (identical(other.orderNumber, orderNumber) ||
                other.orderNumber == orderNumber) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.deliveryImage, deliveryImage) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_productDetails),
      orderNumber,
      status,
      const DeepCollectionEquality().hash(deliveryImage),
      comment,
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderDataImplCopyWith<_$OrderDataImpl> get copyWith =>
      __$$OrderDataImplCopyWithImpl<_$OrderDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderDataImplToJson(
      this,
    );
  }
}

abstract class _OrderData implements OrderData {
  factory _OrderData(
      {final String? id,
      @JsonKey(name: 'product_details')
      final List<ProductDetail>? productDetails,
      @JsonKey(name: 'order_number') final String? orderNumber,
      final String? status,
      @JsonKey(name: 'delivery_image') final dynamic deliveryImage,
      final String? comment,
      final String? user}) = _$OrderDataImpl;

  factory _OrderData.fromJson(Map<String, dynamic> json) =
      _$OrderDataImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'product_details')
  List<ProductDetail>? get productDetails;
  @override
  @JsonKey(name: 'order_number')
  String? get orderNumber;
  @override
  String? get status;
  @override
  @JsonKey(name: 'delivery_image')
  dynamic get deliveryImage;
  @override
  String? get comment;
  @override
  String? get user;
  @override
  @JsonKey(ignore: true)
  _$$OrderDataImplCopyWith<_$OrderDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
