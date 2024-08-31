// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OrderUserData _$OrderUserDataFromJson(Map<String, dynamic> json) {
  return _OrderUserData.fromJson(json);
}

/// @nodoc
mixin _$OrderUserData {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_details')
  List<ProductDetail>? get productDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_date')
  DateTime? get orderDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'order_number')
  String? get orderNumber => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_image')
  dynamic get deliveryImage => throw _privateConstructorUsedError;
  String? get comment => throw _privateConstructorUsedError;
  String? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderUserDataCopyWith<OrderUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderUserDataCopyWith<$Res> {
  factory $OrderUserDataCopyWith(
          OrderUserData value, $Res Function(OrderUserData) then) =
      _$OrderUserDataCopyWithImpl<$Res, OrderUserData>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'product_details') List<ProductDetail>? productDetails,
      @JsonKey(name: 'order_date') DateTime? orderDate,
      @JsonKey(name: 'order_number') String? orderNumber,
      String? status,
      @JsonKey(name: 'delivery_image') dynamic deliveryImage,
      String? comment,
      String? user});
}

/// @nodoc
class _$OrderUserDataCopyWithImpl<$Res, $Val extends OrderUserData>
    implements $OrderUserDataCopyWith<$Res> {
  _$OrderUserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productDetails = freezed,
    Object? orderDate = freezed,
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
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$OrderUserDataImplCopyWith<$Res>
    implements $OrderUserDataCopyWith<$Res> {
  factory _$$OrderUserDataImplCopyWith(
          _$OrderUserDataImpl value, $Res Function(_$OrderUserDataImpl) then) =
      __$$OrderUserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: 'product_details') List<ProductDetail>? productDetails,
      @JsonKey(name: 'order_date') DateTime? orderDate,
      @JsonKey(name: 'order_number') String? orderNumber,
      String? status,
      @JsonKey(name: 'delivery_image') dynamic deliveryImage,
      String? comment,
      String? user});
}

/// @nodoc
class __$$OrderUserDataImplCopyWithImpl<$Res>
    extends _$OrderUserDataCopyWithImpl<$Res, _$OrderUserDataImpl>
    implements _$$OrderUserDataImplCopyWith<$Res> {
  __$$OrderUserDataImplCopyWithImpl(
      _$OrderUserDataImpl _value, $Res Function(_$OrderUserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? productDetails = freezed,
    Object? orderDate = freezed,
    Object? orderNumber = freezed,
    Object? status = freezed,
    Object? deliveryImage = freezed,
    Object? comment = freezed,
    Object? user = freezed,
  }) {
    return _then(_$OrderUserDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      productDetails: freezed == productDetails
          ? _value._productDetails
          : productDetails // ignore: cast_nullable_to_non_nullable
              as List<ProductDetail>?,
      orderDate: freezed == orderDate
          ? _value.orderDate
          : orderDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$OrderUserDataImpl implements _OrderUserData {
  _$OrderUserDataImpl(
      {this.id,
      @JsonKey(name: 'product_details')
      final List<ProductDetail>? productDetails,
      @JsonKey(name: 'order_date') this.orderDate,
      @JsonKey(name: 'order_number') this.orderNumber,
      this.status,
      @JsonKey(name: 'delivery_image') this.deliveryImage,
      this.comment,
      this.user})
      : _productDetails = productDetails;

  factory _$OrderUserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$OrderUserDataImplFromJson(json);

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
  @JsonKey(name: 'order_date')
  final DateTime? orderDate;
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
    return 'OrderUserData(id: $id, productDetails: $productDetails, orderDate: $orderDate, orderNumber: $orderNumber, status: $status, deliveryImage: $deliveryImage, comment: $comment, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OrderUserDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._productDetails, _productDetails) &&
            (identical(other.orderDate, orderDate) ||
                other.orderDate == orderDate) &&
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
      orderDate,
      orderNumber,
      status,
      const DeepCollectionEquality().hash(deliveryImage),
      comment,
      user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OrderUserDataImplCopyWith<_$OrderUserDataImpl> get copyWith =>
      __$$OrderUserDataImplCopyWithImpl<_$OrderUserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OrderUserDataImplToJson(
      this,
    );
  }
}

abstract class _OrderUserData implements OrderUserData {
  factory _OrderUserData(
      {final String? id,
      @JsonKey(name: 'product_details')
      final List<ProductDetail>? productDetails,
      @JsonKey(name: 'order_date') final DateTime? orderDate,
      @JsonKey(name: 'order_number') final String? orderNumber,
      final String? status,
      @JsonKey(name: 'delivery_image') final dynamic deliveryImage,
      final String? comment,
      final String? user}) = _$OrderUserDataImpl;

  factory _OrderUserData.fromJson(Map<String, dynamic> json) =
      _$OrderUserDataImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: 'product_details')
  List<ProductDetail>? get productDetails;
  @override
  @JsonKey(name: 'order_date')
  DateTime? get orderDate;
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
  _$$OrderUserDataImplCopyWith<_$OrderUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
