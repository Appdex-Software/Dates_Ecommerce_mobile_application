// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoriesEntity _$CategoriesEntityFromJson(Map<String, dynamic> json) {
  return _CategoriesEntity.fromJson(json);
}

/// @nodoc
mixin _$CategoriesEntity {
  @JsonKey(name: 'status_code')
  num? get statusCode => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;
  List<CategoryData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesEntityCopyWith<CategoriesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesEntityCopyWith<$Res> {
  factory $CategoriesEntityCopyWith(
          CategoriesEntity value, $Res Function(CategoriesEntity) then) =
      _$CategoriesEntityCopyWithImpl<$Res, CategoriesEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') num? statusCode,
      String? message,
      Meta? meta,
      List<CategoryData>? data});

  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$CategoriesEntityCopyWithImpl<$Res, $Val extends CategoriesEntity>
    implements $CategoriesEntityCopyWith<$Res> {
  _$CategoriesEntityCopyWithImpl(this._value, this._then);

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
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryData>?,
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
}

/// @nodoc
abstract class _$$CategoriesEntityImplCopyWith<$Res>
    implements $CategoriesEntityCopyWith<$Res> {
  factory _$$CategoriesEntityImplCopyWith(_$CategoriesEntityImpl value,
          $Res Function(_$CategoriesEntityImpl) then) =
      __$$CategoriesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status_code') num? statusCode,
      String? message,
      Meta? meta,
      List<CategoryData>? data});

  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$CategoriesEntityImplCopyWithImpl<$Res>
    extends _$CategoriesEntityCopyWithImpl<$Res, _$CategoriesEntityImpl>
    implements _$$CategoriesEntityImplCopyWith<$Res> {
  __$$CategoriesEntityImplCopyWithImpl(_$CategoriesEntityImpl _value,
      $Res Function(_$CategoriesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = freezed,
    Object? message = freezed,
    Object? meta = freezed,
    Object? data = freezed,
  }) {
    return _then(_$CategoriesEntityImpl(
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
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CategoryData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesEntityImpl implements _CategoriesEntity {
  _$CategoriesEntityImpl(
      {@JsonKey(name: 'status_code') this.statusCode,
      this.message,
      this.meta,
      final List<CategoryData>? data})
      : _data = data;

  factory _$CategoriesEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesEntityImplFromJson(json);

  @override
  @JsonKey(name: 'status_code')
  final num? statusCode;
  @override
  final String? message;
  @override
  final Meta? meta;
  final List<CategoryData>? _data;
  @override
  List<CategoryData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CategoriesEntity(statusCode: $statusCode, message: $message, meta: $meta, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesEntityImpl &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message, meta,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesEntityImplCopyWith<_$CategoriesEntityImpl> get copyWith =>
      __$$CategoriesEntityImplCopyWithImpl<_$CategoriesEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesEntityImplToJson(
      this,
    );
  }
}

abstract class _CategoriesEntity implements CategoriesEntity {
  factory _CategoriesEntity(
      {@JsonKey(name: 'status_code') final num? statusCode,
      final String? message,
      final Meta? meta,
      final List<CategoryData>? data}) = _$CategoriesEntityImpl;

  factory _CategoriesEntity.fromJson(Map<String, dynamic> json) =
      _$CategoriesEntityImpl.fromJson;

  @override
  @JsonKey(name: 'status_code')
  num? get statusCode;
  @override
  String? get message;
  @override
  Meta? get meta;
  @override
  List<CategoryData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesEntityImplCopyWith<_$CategoriesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
