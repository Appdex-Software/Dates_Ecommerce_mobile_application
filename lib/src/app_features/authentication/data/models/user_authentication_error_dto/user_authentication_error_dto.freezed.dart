// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_authentication_error_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAuthenticationErrorDto _$UserAuthenticationErrorDtoFromJson(
    Map<String, dynamic> json) {
  return _UserAuthenticationErrorDto.fromJson(json);
}

/// @nodoc
mixin _$UserAuthenticationErrorDto {
  @JsonKey(name: 'status_code')
  num? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserError? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAuthenticationErrorDtoCopyWith<UserAuthenticationErrorDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthenticationErrorDtoCopyWith<$Res> {
  factory $UserAuthenticationErrorDtoCopyWith(UserAuthenticationErrorDto value,
          $Res Function(UserAuthenticationErrorDto) then) =
      _$UserAuthenticationErrorDtoCopyWithImpl<$Res,
          UserAuthenticationErrorDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') num? statusCode,
      String? message,
      UserError? error});

  $UserErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$UserAuthenticationErrorDtoCopyWithImpl<$Res,
        $Val extends UserAuthenticationErrorDto>
    implements $UserAuthenticationErrorDtoCopyWith<$Res> {
  _$UserAuthenticationErrorDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? error = freezed,
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
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as UserError?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserErrorCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $UserErrorCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserAuthenticationErrorDtoImplCopyWith<$Res>
    implements $UserAuthenticationErrorDtoCopyWith<$Res> {
  factory _$$UserAuthenticationErrorDtoImplCopyWith(
          _$UserAuthenticationErrorDtoImpl value,
          $Res Function(_$UserAuthenticationErrorDtoImpl) then) =
      __$$UserAuthenticationErrorDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') num? statusCode,
      String? message,
      UserError? error});

  @override
  $UserErrorCopyWith<$Res>? get error;
}

/// @nodoc
class __$$UserAuthenticationErrorDtoImplCopyWithImpl<$Res>
    extends _$UserAuthenticationErrorDtoCopyWithImpl<$Res,
        _$UserAuthenticationErrorDtoImpl>
    implements _$$UserAuthenticationErrorDtoImplCopyWith<$Res> {
  __$$UserAuthenticationErrorDtoImplCopyWithImpl(
      _$UserAuthenticationErrorDtoImpl _value,
      $Res Function(_$UserAuthenticationErrorDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_$UserAuthenticationErrorDtoImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as num?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as UserError?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAuthenticationErrorDtoImpl implements _UserAuthenticationErrorDto {
  _$UserAuthenticationErrorDtoImpl(
      {@JsonKey(name: 'status_code') this.statusCode,
      this.message,
      this.error});

  factory _$UserAuthenticationErrorDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserAuthenticationErrorDtoImplFromJson(json);

  @override
  @JsonKey(name: 'status_code')
  final num? statusCode;
  @override
  final String? message;
  @override
  final UserError? error;

  @override
  String toString() {
    return 'UserAuthenticationErrorDto(statusCode: $statusCode, message: $message, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthenticationErrorDtoImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAuthenticationErrorDtoImplCopyWith<_$UserAuthenticationErrorDtoImpl>
      get copyWith => __$$UserAuthenticationErrorDtoImplCopyWithImpl<
          _$UserAuthenticationErrorDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthenticationErrorDtoImplToJson(
      this,
    );
  }
}

abstract class _UserAuthenticationErrorDto
    implements UserAuthenticationErrorDto {
  factory _UserAuthenticationErrorDto(
      {@JsonKey(name: 'status_code') final num? statusCode,
      final String? message,
      final UserError? error}) = _$UserAuthenticationErrorDtoImpl;

  factory _UserAuthenticationErrorDto.fromJson(Map<String, dynamic> json) =
      _$UserAuthenticationErrorDtoImpl.fromJson;

  @override
  @JsonKey(name: 'status_code')
  num? get statusCode;
  @override
  String? get message;
  @override
  UserError? get error;
  @override
  @JsonKey(ignore: true)
  _$$UserAuthenticationErrorDtoImplCopyWith<_$UserAuthenticationErrorDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
