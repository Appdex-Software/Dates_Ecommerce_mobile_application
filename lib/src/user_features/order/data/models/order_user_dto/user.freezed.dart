// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_login')
  DateTime? get lastLogin => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_superuser')
  bool? get isSuperuser => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_staff')
  bool? get isStaff => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_joined')
  DateTime? get dateJoined => throw _privateConstructorUsedError;
  @JsonKey(name: 'registration_status')
  String? get registrationStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'registration_datetime')
  DateTime? get registrationDatetime => throw _privateConstructorUsedError;
  @JsonKey(name: 'reject_comment')
  dynamic get rejectComment => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get street => throw _privateConstructorUsedError;
  @JsonKey(name: 'zip_code')
  String? get zipCode => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_type')
  String? get customerType => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  dynamic get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      @JsonKey(name: 'last_login') DateTime? lastLogin,
      @JsonKey(name: 'is_superuser') bool? isSuperuser,
      String? username,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'is_staff') bool? isStaff,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'date_joined') DateTime? dateJoined,
      @JsonKey(name: 'registration_status') String? registrationStatus,
      @JsonKey(name: 'registration_datetime') DateTime? registrationDatetime,
      @JsonKey(name: 'reject_comment') dynamic rejectComment,
      String? country,
      String? city,
      String? street,
      @JsonKey(name: 'zip_code') String? zipCode,
      String? role,
      @JsonKey(name: 'customer_type') String? customerType,
      String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      dynamic picture});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lastLogin = freezed,
    Object? isSuperuser = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? isStaff = freezed,
    Object? isActive = freezed,
    Object? dateJoined = freezed,
    Object? registrationStatus = freezed,
    Object? registrationDatetime = freezed,
    Object? rejectComment = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? zipCode = freezed,
    Object? role = freezed,
    Object? customerType = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSuperuser: freezed == isSuperuser
          ? _value.isSuperuser
          : isSuperuser // ignore: cast_nullable_to_non_nullable
              as bool?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      isStaff: freezed == isStaff
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      registrationStatus: freezed == registrationStatus
          ? _value.registrationStatus
          : registrationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationDatetime: freezed == registrationDatetime
          ? _value.registrationDatetime
          : registrationDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectComment: freezed == rejectComment
          ? _value.rejectComment
          : rejectComment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      customerType: freezed == customerType
          ? _value.customerType
          : customerType // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      @JsonKey(name: 'last_login') DateTime? lastLogin,
      @JsonKey(name: 'is_superuser') bool? isSuperuser,
      String? username,
      @JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'is_staff') bool? isStaff,
      @JsonKey(name: 'is_active') bool? isActive,
      @JsonKey(name: 'date_joined') DateTime? dateJoined,
      @JsonKey(name: 'registration_status') String? registrationStatus,
      @JsonKey(name: 'registration_datetime') DateTime? registrationDatetime,
      @JsonKey(name: 'reject_comment') dynamic rejectComment,
      String? country,
      String? city,
      String? street,
      @JsonKey(name: 'zip_code') String? zipCode,
      String? role,
      @JsonKey(name: 'customer_type') String? customerType,
      String? email,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      dynamic picture});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? lastLogin = freezed,
    Object? isSuperuser = freezed,
    Object? username = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? isStaff = freezed,
    Object? isActive = freezed,
    Object? dateJoined = freezed,
    Object? registrationStatus = freezed,
    Object? registrationDatetime = freezed,
    Object? rejectComment = freezed,
    Object? country = freezed,
    Object? city = freezed,
    Object? street = freezed,
    Object? zipCode = freezed,
    Object? role = freezed,
    Object? customerType = freezed,
    Object? email = freezed,
    Object? phoneNumber = freezed,
    Object? picture = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isSuperuser: freezed == isSuperuser
          ? _value.isSuperuser
          : isSuperuser // ignore: cast_nullable_to_non_nullable
              as bool?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      isStaff: freezed == isStaff
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      registrationStatus: freezed == registrationStatus
          ? _value.registrationStatus
          : registrationStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      registrationDatetime: freezed == registrationDatetime
          ? _value.registrationDatetime
          : registrationDatetime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      rejectComment: freezed == rejectComment
          ? _value.rejectComment
          : rejectComment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as String?,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      customerType: freezed == customerType
          ? _value.customerType
          : customerType // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'last_login') this.lastLogin,
      @JsonKey(name: 'is_superuser') this.isSuperuser,
      this.username,
      @JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'is_staff') this.isStaff,
      @JsonKey(name: 'is_active') this.isActive,
      @JsonKey(name: 'date_joined') this.dateJoined,
      @JsonKey(name: 'registration_status') this.registrationStatus,
      @JsonKey(name: 'registration_datetime') this.registrationDatetime,
      @JsonKey(name: 'reject_comment') this.rejectComment,
      this.country,
      this.city,
      this.street,
      @JsonKey(name: 'zip_code') this.zipCode,
      this.role,
      @JsonKey(name: 'customer_type') this.customerType,
      this.email,
      @JsonKey(name: 'phone_number') this.phoneNumber,
      this.picture});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'last_login')
  final DateTime? lastLogin;
  @override
  @JsonKey(name: 'is_superuser')
  final bool? isSuperuser;
  @override
  final String? username;
  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'is_staff')
  final bool? isStaff;
  @override
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @JsonKey(name: 'date_joined')
  final DateTime? dateJoined;
  @override
  @JsonKey(name: 'registration_status')
  final String? registrationStatus;
  @override
  @JsonKey(name: 'registration_datetime')
  final DateTime? registrationDatetime;
  @override
  @JsonKey(name: 'reject_comment')
  final dynamic rejectComment;
  @override
  final String? country;
  @override
  final String? city;
  @override
  final String? street;
  @override
  @JsonKey(name: 'zip_code')
  final String? zipCode;
  @override
  final String? role;
  @override
  @JsonKey(name: 'customer_type')
  final String? customerType;
  @override
  final String? email;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  final dynamic picture;

  @override
  String toString() {
    return 'User(id: $id, name: $name, lastLogin: $lastLogin, isSuperuser: $isSuperuser, username: $username, firstName: $firstName, lastName: $lastName, isStaff: $isStaff, isActive: $isActive, dateJoined: $dateJoined, registrationStatus: $registrationStatus, registrationDatetime: $registrationDatetime, rejectComment: $rejectComment, country: $country, city: $city, street: $street, zipCode: $zipCode, role: $role, customerType: $customerType, email: $email, phoneNumber: $phoneNumber, picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.isSuperuser, isSuperuser) ||
                other.isSuperuser == isSuperuser) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.isStaff, isStaff) || other.isStaff == isStaff) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.dateJoined, dateJoined) ||
                other.dateJoined == dateJoined) &&
            (identical(other.registrationStatus, registrationStatus) ||
                other.registrationStatus == registrationStatus) &&
            (identical(other.registrationDatetime, registrationDatetime) ||
                other.registrationDatetime == registrationDatetime) &&
            const DeepCollectionEquality()
                .equals(other.rejectComment, rejectComment) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.street, street) || other.street == street) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.customerType, customerType) ||
                other.customerType == customerType) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality().equals(other.picture, picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        lastLogin,
        isSuperuser,
        username,
        firstName,
        lastName,
        isStaff,
        isActive,
        dateJoined,
        registrationStatus,
        registrationDatetime,
        const DeepCollectionEquality().hash(rejectComment),
        country,
        city,
        street,
        zipCode,
        role,
        customerType,
        email,
        phoneNumber,
        const DeepCollectionEquality().hash(picture)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {final String? id,
      final String? name,
      @JsonKey(name: 'last_login') final DateTime? lastLogin,
      @JsonKey(name: 'is_superuser') final bool? isSuperuser,
      final String? username,
      @JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'is_staff') final bool? isStaff,
      @JsonKey(name: 'is_active') final bool? isActive,
      @JsonKey(name: 'date_joined') final DateTime? dateJoined,
      @JsonKey(name: 'registration_status') final String? registrationStatus,
      @JsonKey(name: 'registration_datetime')
      final DateTime? registrationDatetime,
      @JsonKey(name: 'reject_comment') final dynamic rejectComment,
      final String? country,
      final String? city,
      final String? street,
      @JsonKey(name: 'zip_code') final String? zipCode,
      final String? role,
      @JsonKey(name: 'customer_type') final String? customerType,
      final String? email,
      @JsonKey(name: 'phone_number') final String? phoneNumber,
      final dynamic picture}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'last_login')
  DateTime? get lastLogin;
  @override
  @JsonKey(name: 'is_superuser')
  bool? get isSuperuser;
  @override
  String? get username;
  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'is_staff')
  bool? get isStaff;
  @override
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @JsonKey(name: 'date_joined')
  DateTime? get dateJoined;
  @override
  @JsonKey(name: 'registration_status')
  String? get registrationStatus;
  @override
  @JsonKey(name: 'registration_datetime')
  DateTime? get registrationDatetime;
  @override
  @JsonKey(name: 'reject_comment')
  dynamic get rejectComment;
  @override
  String? get country;
  @override
  String? get city;
  @override
  String? get street;
  @override
  @JsonKey(name: 'zip_code')
  String? get zipCode;
  @override
  String? get role;
  @override
  @JsonKey(name: 'customer_type')
  String? get customerType;
  @override
  String? get email;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  dynamic get picture;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
