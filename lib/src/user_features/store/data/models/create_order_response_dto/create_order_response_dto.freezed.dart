// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_order_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateOrderResponseDto _$CreateOrderResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _CreateOrderResponseDto.fromJson(json);
}

/// @nodoc
mixin _$CreateOrderResponseDto {
  @JsonKey(name: 'status_code')
  num? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  OrderData? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateOrderResponseDtoCopyWith<CreateOrderResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateOrderResponseDtoCopyWith<$Res> {
  factory $CreateOrderResponseDtoCopyWith(CreateOrderResponseDto value,
          $Res Function(CreateOrderResponseDto) then) =
      _$CreateOrderResponseDtoCopyWithImpl<$Res, CreateOrderResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') num? statusCode,
      String? message,
      OrderData? data});

  $OrderDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$CreateOrderResponseDtoCopyWithImpl<$Res,
        $Val extends CreateOrderResponseDto>
    implements $CreateOrderResponseDtoCopyWith<$Res> {
  _$CreateOrderResponseDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateOrderResponseDtoImplCopyWith<$Res>
    implements $CreateOrderResponseDtoCopyWith<$Res> {
  factory _$$CreateOrderResponseDtoImplCopyWith(
          _$CreateOrderResponseDtoImpl value,
          $Res Function(_$CreateOrderResponseDtoImpl) then) =
      __$$CreateOrderResponseDtoImplCopyWithImpl<$Res>;
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
class __$$CreateOrderResponseDtoImplCopyWithImpl<$Res>
    extends _$CreateOrderResponseDtoCopyWithImpl<$Res,
        _$CreateOrderResponseDtoImpl>
    implements _$$CreateOrderResponseDtoImplCopyWith<$Res> {
  __$$CreateOrderResponseDtoImplCopyWithImpl(
      _$CreateOrderResponseDtoImpl _value,
      $Res Function(_$CreateOrderResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CreateOrderResponseDtoImpl(
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
class _$CreateOrderResponseDtoImpl implements _CreateOrderResponseDto {
  _$CreateOrderResponseDtoImpl(
      {@JsonKey(name: 'status_code') this.statusCode, this.message, this.data});

  factory _$CreateOrderResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateOrderResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'status_code')
  final num? statusCode;
  @override
  final String? message;
  @override
  final OrderData? data;

  @override
  String toString() {
    return 'CreateOrderResponseDto(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateOrderResponseDtoImpl &&
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
  _$$CreateOrderResponseDtoImplCopyWith<_$CreateOrderResponseDtoImpl>
      get copyWith => __$$CreateOrderResponseDtoImplCopyWithImpl<
          _$CreateOrderResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateOrderResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateOrderResponseDto implements CreateOrderResponseDto {
  factory _CreateOrderResponseDto(
      {@JsonKey(name: 'status_code') final num? statusCode,
      final String? message,
      final OrderData? data}) = _$CreateOrderResponseDtoImpl;

  factory _CreateOrderResponseDto.fromJson(Map<String, dynamic> json) =
      _$CreateOrderResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'status_code')
  num? get statusCode;
  @override
  String? get message;
  @override
  OrderData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateOrderResponseDtoImplCopyWith<_$CreateOrderResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
