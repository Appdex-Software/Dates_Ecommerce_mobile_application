// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) {
  return _ProductDetail.fromJson(json);
}

/// @nodoc
mixin _$ProductDetail {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String? get productName => throw _privateConstructorUsedError;
  num? get quantity => throw _privateConstructorUsedError;
  String? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailCopyWith<ProductDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailCopyWith<$Res> {
  factory $ProductDetailCopyWith(
          ProductDetail value, $Res Function(ProductDetail) then) =
      _$ProductDetailCopyWithImpl<$Res, ProductDetail>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'product_name') String? productName,
      num? quantity,
      String? product});
}

/// @nodoc
class _$ProductDetailCopyWithImpl<$Res, $Val extends ProductDetail>
    implements $ProductDetailCopyWith<$Res> {
  _$ProductDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productName = freezed,
    Object? quantity = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductDetailImplCopyWith<$Res>
    implements $ProductDetailCopyWith<$Res> {
  factory _$$ProductDetailImplCopyWith(
          _$ProductDetailImpl value, $Res Function(_$ProductDetailImpl) then) =
      __$$ProductDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'product_name') String? productName,
      num? quantity,
      String? product});
}

/// @nodoc
class __$$ProductDetailImplCopyWithImpl<$Res>
    extends _$ProductDetailCopyWithImpl<$Res, _$ProductDetailImpl>
    implements _$$ProductDetailImplCopyWith<$Res> {
  __$$ProductDetailImplCopyWithImpl(
      _$ProductDetailImpl _value, $Res Function(_$ProductDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productName = freezed,
    Object? quantity = freezed,
    Object? product = freezed,
  }) {
    return _then(_$ProductDetailImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productName: freezed == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailImpl implements _ProductDetail {
  _$ProductDetailImpl(
      {this.id,
      @JsonKey(name: 'product_name') this.productName,
      this.quantity,
      this.product});

  factory _$ProductDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: 'product_name')
  final String? productName;
  @override
  final num? quantity;
  @override
  final String? product;

  @override
  String toString() {
    return 'ProductDetail(id: $id, productName: $productName, quantity: $quantity, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, productName, quantity, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailImplCopyWith<_$ProductDetailImpl> get copyWith =>
      __$$ProductDetailImplCopyWithImpl<_$ProductDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailImplToJson(
      this,
    );
  }
}

abstract class _ProductDetail implements ProductDetail {
  factory _ProductDetail(
      {final String? id,
      @JsonKey(name: 'product_name') final String? productName,
      final num? quantity,
      final String? product}) = _$ProductDetailImpl;

  factory _ProductDetail.fromJson(Map<String, dynamic> json) =
      _$ProductDetailImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'product_name')
  String? get productName;
  @override
  num? get quantity;
  @override
  String? get product;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailImplCopyWith<_$ProductDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
