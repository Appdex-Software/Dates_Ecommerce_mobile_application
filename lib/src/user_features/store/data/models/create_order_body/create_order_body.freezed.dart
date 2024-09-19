// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateOrderBody _$CreateOrderBodyFromJson(Map<String, dynamic> json) {
  return _CreateOrderBody.fromJson(json);
}

/// @nodoc
mixin _$CreateOrderBody {
  String? get user => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  num? get quantity => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: "product_details")
  List<Product>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderBodyCopyWith<CreateOrderBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderBodyCopyWith<$Res> {
  factory $CreateOrderBodyCopyWith(
          CreateOrderBody value, $Res Function(CreateOrderBody) then) =
      _$CreateOrderBodyCopyWithImpl<$Res, CreateOrderBody>;
  @useResult
  $Res call(
      {String? user,
      String? status,
      num? quantity,
      String? comment,
      @JsonKey(name: "product_details") List<Product>? products});
}

/// @nodoc
class _$CreateOrderBodyCopyWithImpl<$Res, $Val extends CreateOrderBody>
    implements $CreateOrderBodyCopyWith<$Res> {
  _$CreateOrderBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? status = freezed,
    Object? quantity = freezed,
    Object? comment = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateOrderBodyImplCopyWith<$Res>
    implements $CreateOrderBodyCopyWith<$Res> {
  factory _$$CreateOrderBodyImplCopyWith(_$CreateOrderBodyImpl value,
          $Res Function(_$CreateOrderBodyImpl) then) =
      __$$CreateOrderBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? user,
      String? status,
      num? quantity,
      String? comment,
      @JsonKey(name: "product_details") List<Product>? products});
}

/// @nodoc
class __$$CreateOrderBodyImplCopyWithImpl<$Res>
    extends _$CreateOrderBodyCopyWithImpl<$Res, _$CreateOrderBodyImpl>
    implements _$$CreateOrderBodyImplCopyWith<$Res> {
  __$$CreateOrderBodyImplCopyWithImpl(
      _$CreateOrderBodyImpl _value, $Res Function(_$CreateOrderBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? status = freezed,
    Object? quantity = freezed,
    Object? comment = freezed,
    Object? products = freezed,
  }) {
    return _then(_$CreateOrderBodyImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as num?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateOrderBodyImpl implements _CreateOrderBody {
  _$CreateOrderBodyImpl(
      {this.user,
      this.status,
      this.quantity,
      this.comment,
      @JsonKey(name: "product_details") final List<Product>? products})
      : _products = products;

  factory _$CreateOrderBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateOrderBodyImplFromJson(json);

  @override
  final String? user;
  @override
  final String? status;
  @override
  final num? quantity;
  @override
  final String? comment;
  final List<Product>? _products;
  @override
  @JsonKey(name: "product_details")
  List<Product>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateOrderBody(user: $user, status: $status, quantity: $quantity, comment: $comment, products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderBodyImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, status, quantity, comment,
      const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderBodyImplCopyWith<_$CreateOrderBodyImpl> get copyWith =>
      __$$CreateOrderBodyImplCopyWithImpl<_$CreateOrderBodyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateOrderBodyImplToJson(
      this,
    );
  }
}

abstract class _CreateOrderBody implements CreateOrderBody {
  factory _CreateOrderBody(
          {final String? user,
          final String? status,
          final num? quantity,
          final String? comment,
          @JsonKey(name: "product_details") final List<Product>? products}) =
      _$CreateOrderBodyImpl;

  factory _CreateOrderBody.fromJson(Map<String, dynamic> json) =
      _$CreateOrderBodyImpl.fromJson;

  @override
  String? get user;
  @override
  String? get status;
  @override
  num? get quantity;
  @override
  String? get comment;
  @override
  @JsonKey(name: "product_details")
  List<Product>? get products;
  @override
  @JsonKey(ignore: true)
  _$$CreateOrderBodyImplCopyWith<_$CreateOrderBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
