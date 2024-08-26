// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_authentication_error_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserAuthenticationErrorEntity _$UserAuthenticationErrorEntityFromJson(
    Map<String, dynamic> json) {
  return _UserAuthenticationErrorEntity.fromJson(json);
}

/// @nodoc
mixin _$UserAuthenticationErrorEntity {
  @JsonKey(name: 'status_code')
  num? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  UserError? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAuthenticationErrorEntityCopyWith<UserAuthenticationErrorEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthenticationErrorEntityCopyWith<$Res> {
  factory $UserAuthenticationErrorEntityCopyWith(
          UserAuthenticationErrorEntity value,
          $Res Function(UserAuthenticationErrorEntity) then) =
      _$UserAuthenticationErrorEntityCopyWithImpl<$Res,
          UserAuthenticationErrorEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') num? statusCode,
      String? message,
      UserError? error});

  $UserErrorCopyWith<$Res>? get error;
}

/// @nodoc
class _$UserAuthenticationErrorEntityCopyWithImpl<$Res,
        $Val extends UserAuthenticationErrorEntity>
    implements $UserAuthenticationErrorEntityCopyWith<$Res> {
  _$UserAuthenticationErrorEntityCopyWithImpl(this._value, this._then);

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
abstract class _$$UserAuthenticationErrorEntityImplCopyWith<$Res>
    implements $UserAuthenticationErrorEntityCopyWith<$Res> {
  factory _$$UserAuthenticationErrorEntityImplCopyWith(
          _$UserAuthenticationErrorEntityImpl value,
          $Res Function(_$UserAuthenticationErrorEntityImpl) then) =
      __$$UserAuthenticationErrorEntityImplCopyWithImpl<$Res>;
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
class __$$UserAuthenticationErrorEntityImplCopyWithImpl<$Res>
    extends _$UserAuthenticationErrorEntityCopyWithImpl<$Res,
        _$UserAuthenticationErrorEntityImpl>
    implements _$$UserAuthenticationErrorEntityImplCopyWith<$Res> {
  __$$UserAuthenticationErrorEntityImplCopyWithImpl(
      _$UserAuthenticationErrorEntityImpl _value,
      $Res Function(_$UserAuthenticationErrorEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? error = freezed,
  }) {
    return _then(_$UserAuthenticationErrorEntityImpl(
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
class _$UserAuthenticationErrorEntityImpl
    implements _UserAuthenticationErrorEntity {
  _$UserAuthenticationErrorEntityImpl(
      {@JsonKey(name: 'status_code') this.statusCode,
      this.message,
      this.error});

  factory _$UserAuthenticationErrorEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserAuthenticationErrorEntityImplFromJson(json);

  @override
  @JsonKey(name: 'status_code')
  final num? statusCode;
  @override
  final String? message;
  @override
  final UserError? error;

  @override
  String toString() {
    return 'UserAuthenticationErrorEntity(statusCode: $statusCode, message: $message, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAuthenticationErrorEntityImpl &&
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
  _$$UserAuthenticationErrorEntityImplCopyWith<
          _$UserAuthenticationErrorEntityImpl>
      get copyWith => __$$UserAuthenticationErrorEntityImplCopyWithImpl<
          _$UserAuthenticationErrorEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAuthenticationErrorEntityImplToJson(
      this,
    );
  }
}

abstract class _UserAuthenticationErrorEntity
    implements UserAuthenticationErrorEntity {
  factory _UserAuthenticationErrorEntity(
      {@JsonKey(name: 'status_code') final num? statusCode,
      final String? message,
      final UserError? error}) = _$UserAuthenticationErrorEntityImpl;

  factory _UserAuthenticationErrorEntity.fromJson(Map<String, dynamic> json) =
      _$UserAuthenticationErrorEntityImpl.fromJson;

  @override
  @JsonKey(name: 'status_code')
  num? get statusCode;
  @override
  String? get message;
  @override
  UserError? get error;
  @override
  @JsonKey(ignore: true)
  _$$UserAuthenticationErrorEntityImplCopyWith<
          _$UserAuthenticationErrorEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
