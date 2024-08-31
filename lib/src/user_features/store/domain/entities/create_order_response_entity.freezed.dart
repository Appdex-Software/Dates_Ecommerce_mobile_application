// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateOrderResponseEntity _$CreateOrderResponseEntityFromJson(
    Map<String, dynamic> json) {
  return _CreateOrderResponseEntity.fromJson(json);
}

/// @nodoc
mixin _$CreateOrderResponseEntity {
  @JsonKey(name: 'status_code')
  num? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  OrderData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderResponseEntityCopyWith<CreateOrderResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderResponseEntityCopyWith<$Res> {
  factory $CreateOrderResponseEntityCopyWith(CreateOrderResponseEntity value,
          $Res Function(CreateOrderResponseEntity) then) =
      _$CreateOrderResponseEntityCopyWithImpl<$Res, CreateOrderResponseEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') num? statusCode,
      String? message,
      OrderData? data});

  $OrderDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateOrderResponseEntityCopyWithImpl<$Res,
        $Val extends CreateOrderResponseEntity>
    implements $CreateOrderResponseEntityCopyWith<$Res> {
  _$CreateOrderResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as num?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OrderDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $OrderDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateOrderResponseEntityImplCopyWith<$Res>
    implements $CreateOrderResponseEntityCopyWith<$Res> {
  factory _$$CreateOrderResponseEntityImplCopyWith(
          _$CreateOrderResponseEntityImpl value,
          $Res Function(_$CreateOrderResponseEntityImpl) then) =
      __$$CreateOrderResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') num? statusCode,
      String? message,
      OrderData? data});

  @override
  $OrderDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateOrderResponseEntityImplCopyWithImpl<$Res>
    extends _$CreateOrderResponseEntityCopyWithImpl<$Res,
        _$CreateOrderResponseEntityImpl>
    implements _$$CreateOrderResponseEntityImplCopyWith<$Res> {
  __$$CreateOrderResponseEntityImplCopyWithImpl(
      _$CreateOrderResponseEntityImpl _value,
      $Res Function(_$CreateOrderResponseEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreateOrderResponseEntityImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as num?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as OrderData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateOrderResponseEntityImpl implements _CreateOrderResponseEntity {
  _$CreateOrderResponseEntityImpl(
      {@JsonKey(name: 'status_code') this.statusCode, this.message, this.data});

  factory _$CreateOrderResponseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateOrderResponseEntityImplFromJson(json);

  @override
  @JsonKey(name: 'status_code')
  final num? statusCode;
  @override
  final String? message;
  @override
  final OrderData? data;

  @override
  String toString() {
    return 'CreateOrderResponseEntity(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderResponseEntityImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateOrderResponseEntityImplCopyWith<_$CreateOrderResponseEntityImpl>
      get copyWith => __$$CreateOrderResponseEntityImplCopyWithImpl<
          _$CreateOrderResponseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateOrderResponseEntityImplToJson(
      this,
    );
  }
}

abstract class _CreateOrderResponseEntity implements CreateOrderResponseEntity {
  factory _CreateOrderResponseEntity(
      {@JsonKey(name: 'status_code') final num? statusCode,
      final String? message,
      final OrderData? data}) = _$CreateOrderResponseEntityImpl;

  factory _CreateOrderResponseEntity.fromJson(Map<String, dynamic> json) =
      _$CreateOrderResponseEntityImpl.fromJson;

  @override
  @JsonKey(name: 'status_code')
  num? get statusCode;
  @override
  String? get message;
  @override
  OrderData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateOrderResponseEntityImplCopyWith<_$CreateOrderResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
