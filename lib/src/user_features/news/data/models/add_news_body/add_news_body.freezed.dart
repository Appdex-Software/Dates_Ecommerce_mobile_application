// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_news_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddNewsBody _$AddNewsBodyFromJson(Map<String, dynamic> json) {
  return _AddNewsBody.fromJson(json);
}

/// @nodoc
mixin _$AddNewsBody {
  String? get subject => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddNewsBodyCopyWith<AddNewsBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewsBodyCopyWith<$Res> {
  factory $AddNewsBodyCopyWith(
          AddNewsBody value, $Res Function(AddNewsBody) then) =
      _$AddNewsBodyCopyWithImpl<$Res, AddNewsBody>;
  @useResult
  $Res call({String? subject, String? body, String? image});
}

/// @nodoc
class _$AddNewsBodyCopyWithImpl<$Res, $Val extends AddNewsBody>
    implements $AddNewsBodyCopyWith<$Res> {
  _$AddNewsBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = freezed,
    Object? body = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddNewsBodyImplCopyWith<$Res>
    implements $AddNewsBodyCopyWith<$Res> {
  factory _$$AddNewsBodyImplCopyWith(
          _$AddNewsBodyImpl value, $Res Function(_$AddNewsBodyImpl) then) =
      __$$AddNewsBodyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? subject, String? body, String? image});
}

/// @nodoc
class __$$AddNewsBodyImplCopyWithImpl<$Res>
    extends _$AddNewsBodyCopyWithImpl<$Res, _$AddNewsBodyImpl>
    implements _$$AddNewsBodyImplCopyWith<$Res> {
  __$$AddNewsBodyImplCopyWithImpl(
      _$AddNewsBodyImpl _value, $Res Function(_$AddNewsBodyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = freezed,
    Object? body = freezed,
    Object? image = freezed,
  }) {
    return _then(_$AddNewsBodyImpl(
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddNewsBodyImpl implements _AddNewsBody {
  _$AddNewsBodyImpl({this.subject, this.body, this.image});

  factory _$AddNewsBodyImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddNewsBodyImplFromJson(json);

  @override
  final String? subject;
  @override
  final String? body;
  @override
  final String? image;

  @override
  String toString() {
    return 'AddNewsBody(subject: $subject, body: $body, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewsBodyImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subject, body, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewsBodyImplCopyWith<_$AddNewsBodyImpl> get copyWith =>
      __$$AddNewsBodyImplCopyWithImpl<_$AddNewsBodyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddNewsBodyImplToJson(
      this,
    );
  }
}

abstract class _AddNewsBody implements AddNewsBody {
  factory _AddNewsBody(
      {final String? subject,
      final String? body,
      final String? image}) = _$AddNewsBodyImpl;

  factory _AddNewsBody.fromJson(Map<String, dynamic> json) =
      _$AddNewsBodyImpl.fromJson;

  @override
  String? get subject;
  @override
  String? get body;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$AddNewsBodyImplCopyWith<_$AddNewsBodyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
