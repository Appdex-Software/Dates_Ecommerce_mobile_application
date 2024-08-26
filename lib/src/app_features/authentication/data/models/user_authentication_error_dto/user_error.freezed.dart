// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserError _$UserErrorFromJson(Map<String, dynamic> json) {
  return _UserError.fromJson(json);
}

/// @nodoc
mixin _$UserError {
  List<String>? get password => throw _privateConstructorUsedError;
  List<String>? get username => throw _privateConstructorUsedError;
  List<String>? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  List<String>? get phoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserErrorCopyWith<UserError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserErrorCopyWith<$Res> {
  factory $UserErrorCopyWith(UserError value, $Res Function(UserError) then) =
      _$UserErrorCopyWithImpl<$Res, UserError>;
  @useResult
  $Res call(
      {List<String>? password,
      List<String>? username,
      List<String>? email,
      @JsonKey(name: 'phone_number') List<String>? phoneNumber});
}

/// @nodoc
class _$UserErrorCopyWithImpl<$Res, $Val extends UserError>
    implements $UserErrorCopyWith<$Res> {
  _$UserErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_value.copyWith(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserErrorImplCopyWith<$Res>
    implements $UserErrorCopyWith<$Res> {
  factory _$$UserErrorImplCopyWith(
          _$UserErrorImpl value, $Res Function(_$UserErrorImpl) then) =
      __$$UserErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? password,
      List<String>? username,
      List<String>? email,
      @JsonKey(name: 'phone_number') List<String>? phoneNumber});
}

/// @nodoc
class __$$UserErrorImplCopyWithImpl<$Res>
    extends _$UserErrorCopyWithImpl<$Res, _$UserErrorImpl>
    implements _$$UserErrorImplCopyWith<$Res> {
  __$$UserErrorImplCopyWithImpl(
      _$UserErrorImpl _value, $Res Function(_$UserErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = freezed,
    Object? username = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
  }) {
    return _then(_$UserErrorImpl(
      password: freezed == password
          ? _value._password
          : password // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      username: freezed == username
          ? _value._username
          : username // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      email: freezed == email
          ? _value._email
          : email // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      phoneNumber: freezed == phoneNumber
          ? _value._phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserErrorImpl implements _UserError {
  _$UserErrorImpl(
      {final List<String>? password,
      final List<String>? username,
      final List<String>? email,
      @JsonKey(name: 'phone_number') final List<String>? phoneNumber})
      : _password = password,
        _username = username,
        _email = email,
        _phoneNumber = phoneNumber;

  factory _$UserErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserErrorImplFromJson(json);

  final List<String>? _password;
  @override
  List<String>? get password {
    final value = _password;
    if (value == null) return null;
    if (_password is EqualUnmodifiableListView) return _password;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _username;
  @override
  List<String>? get username {
    final value = _username;
    if (value == null) return null;
    if (_username is EqualUnmodifiableListView) return _username;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _email;
  @override
  List<String>? get email {
    final value = _email;
    if (value == null) return null;
    if (_email is EqualUnmodifiableListView) return _email;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _phoneNumber;
  @override
  @JsonKey(name: 'phone_number')
  List<String>? get phoneNumber {
    final value = _phoneNumber;
    if (value == null) return null;
    if (_phoneNumber is EqualUnmodifiableListView) return _phoneNumber;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserError(password: $password, username: $username, email: $email, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserErrorImpl &&
            const DeepCollectionEquality().equals(other._password, _password) &&
            const DeepCollectionEquality().equals(other._username, _username) &&
            const DeepCollectionEquality().equals(other._email, _email) &&
            const DeepCollectionEquality()
                .equals(other._phoneNumber, _phoneNumber));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_password),
      const DeepCollectionEquality().hash(_username),
      const DeepCollectionEquality().hash(_email),
      const DeepCollectionEquality().hash(_phoneNumber));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserErrorImplCopyWith<_$UserErrorImpl> get copyWith =>
      __$$UserErrorImplCopyWithImpl<_$UserErrorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserErrorImplToJson(
      this,
    );
  }
}

abstract class _UserError implements UserError {
  factory _UserError(
          {final List<String>? password,
          final List<String>? username,
          final List<String>? email,
          @JsonKey(name: 'phone_number') final List<String>? phoneNumber}) =
      _$UserErrorImpl;

  factory _UserError.fromJson(Map<String, dynamic> json) =
      _$UserErrorImpl.fromJson;

  @override
  List<String>? get password;
  @override
  List<String>? get username;
  @override
  List<String>? get email;
  @override
  @JsonKey(name: 'phone_number')
  List<String>? get phoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$UserErrorImplCopyWith<_$UserErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
