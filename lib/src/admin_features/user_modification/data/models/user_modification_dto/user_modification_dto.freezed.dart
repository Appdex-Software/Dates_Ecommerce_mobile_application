// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_modification_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModificationDto _$UserModificationDtoFromJson(Map<String, dynamic> json) {
  return _UserModificationDto.fromJson(json);
}

/// @nodoc
mixin _$UserModificationDto {
  @JsonKey(name: 'status_code')
  num? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;
  Pagination? get pagination => throw _privateConstructorUsedError;
  List<UserModificationData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModificationDtoCopyWith<UserModificationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModificationDtoCopyWith<$Res> {
  factory $UserModificationDtoCopyWith(
          UserModificationDto value, $Res Function(UserModificationDto) then) =
      _$UserModificationDtoCopyWithImpl<$Res, UserModificationDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') num? statusCode,
      String? message,
      Meta? meta,
      Pagination? pagination,
      List<UserModificationData>? data});

  $MetaCopyWith<$Res>? get meta;
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class _$UserModificationDtoCopyWithImpl<$Res, $Val extends UserModificationDto>
    implements $UserModificationDtoCopyWith<$Res> {
  _$UserModificationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? meta = freezed,
    Object? pagination = freezed,
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
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserModificationData>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaginationCopyWith<$Res>? get pagination {
    if (_value.pagination == null) {
      return null;
    }

    return $PaginationCopyWith<$Res>(_value.pagination!, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModificationDtoImplCopyWith<$Res>
    implements $UserModificationDtoCopyWith<$Res> {
  factory _$$UserModificationDtoImplCopyWith(_$UserModificationDtoImpl value,
          $Res Function(_$UserModificationDtoImpl) then) =
      __$$UserModificationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') num? statusCode,
      String? message,
      Meta? meta,
      Pagination? pagination,
      List<UserModificationData>? data});

  @override
  $MetaCopyWith<$Res>? get meta;
  @override
  $PaginationCopyWith<$Res>? get pagination;
}

/// @nodoc
class __$$UserModificationDtoImplCopyWithImpl<$Res>
    extends _$UserModificationDtoCopyWithImpl<$Res, _$UserModificationDtoImpl>
    implements _$$UserModificationDtoImplCopyWith<$Res> {
  __$$UserModificationDtoImplCopyWithImpl(_$UserModificationDtoImpl _value,
      $Res Function(_$UserModificationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? meta = freezed,
    Object? pagination = freezed,
    Object? data = freezed,
  }) {
    return _then(_$UserModificationDtoImpl(
      statusCode: freezed == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as num?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
      pagination: freezed == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as Pagination?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<UserModificationData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModificationDtoImpl implements _UserModificationDto {
  _$UserModificationDtoImpl(
      {@JsonKey(name: 'status_code') this.statusCode,
      this.message,
      this.meta,
      this.pagination,
      final List<UserModificationData>? data})
      : _data = data;

  factory _$UserModificationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModificationDtoImplFromJson(json);

  @override
  @JsonKey(name: 'status_code')
  final num? statusCode;
  @override
  final String? message;
  @override
  final Meta? meta;
  @override
  final Pagination? pagination;
  final List<UserModificationData>? _data;
  @override
  List<UserModificationData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserModificationDto(statusCode: $statusCode, message: $message, meta: $meta, pagination: $pagination, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModificationDtoImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message, meta,
      pagination, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModificationDtoImplCopyWith<_$UserModificationDtoImpl> get copyWith =>
      __$$UserModificationDtoImplCopyWithImpl<_$UserModificationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModificationDtoImplToJson(
      this,
    );
  }
}

abstract class _UserModificationDto implements UserModificationDto {
  factory _UserModificationDto(
      {@JsonKey(name: 'status_code') final num? statusCode,
      final String? message,
      final Meta? meta,
      final Pagination? pagination,
      final List<UserModificationData>? data}) = _$UserModificationDtoImpl;

  factory _UserModificationDto.fromJson(Map<String, dynamic> json) =
      _$UserModificationDtoImpl.fromJson;

  @override
  @JsonKey(name: 'status_code')
  num? get statusCode;
  @override
  String? get message;
  @override
  Meta? get meta;
  @override
  Pagination? get pagination;
  @override
  List<UserModificationData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$UserModificationDtoImplCopyWith<_$UserModificationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}