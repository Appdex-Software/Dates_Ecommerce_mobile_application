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
  @HiveField(0)
  String? get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'last_login')
  DateTime? get lastLogin => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'is_superuser')
  bool? get isSuperuser => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get username => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @HiveField(6)
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @HiveField(7)
  @JsonKey(name: 'is_staff')
  bool? get isStaff => throw _privateConstructorUsedError;
  @HiveField(8)
  @JsonKey(name: 'is_active')
  bool? get isActive => throw _privateConstructorUsedError;
  @HiveField(9)
  @JsonKey(name: 'date_joined')
  DateTime? get dateJoined => throw _privateConstructorUsedError;
  @HiveField(10)
  @JsonKey(name: 'registration_status')
  String? get registrationStatus => throw _privateConstructorUsedError;
  @HiveField(11)
  @JsonKey(name: 'registration_datetime')
  dynamic get registrationDatetime => throw _privateConstructorUsedError;
  @HiveField(12)
  @JsonKey(name: 'reject_comment')
  dynamic get rejectComment => throw _privateConstructorUsedError;
  @HiveField(13)
  dynamic get country => throw _privateConstructorUsedError;
  @HiveField(14)
  dynamic get city => throw _privateConstructorUsedError;
  @HiveField(15)
  dynamic get street => throw _privateConstructorUsedError;
  @HiveField(16)
  @JsonKey(name: 'zip_code')
  dynamic get zipCode => throw _privateConstructorUsedError;
  @HiveField(17)
  String? get role => throw _privateConstructorUsedError;
  @HiveField(18)
  @JsonKey(name: 'customer_type')
  dynamic get customerType => throw _privateConstructorUsedError;
  @HiveField(19)
  String? get email => throw _privateConstructorUsedError;
  @HiveField(20)
  @JsonKey(name: 'phone_number')
  dynamic get phoneNumber => throw _privateConstructorUsedError;
  @HiveField(21)
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
      {@HiveField(0) String? id,
      @HiveField(1) String? name,
      @HiveField(2) @JsonKey(name: 'last_login') DateTime? lastLogin,
      @HiveField(3) @JsonKey(name: 'is_superuser') bool? isSuperuser,
      @HiveField(4) String? username,
      @HiveField(5) @JsonKey(name: 'first_name') String? firstName,
      @HiveField(6) @JsonKey(name: 'last_name') String? lastName,
      @HiveField(7) @JsonKey(name: 'is_staff') bool? isStaff,
      @HiveField(8) @JsonKey(name: 'is_active') bool? isActive,
      @HiveField(9) @JsonKey(name: 'date_joined') DateTime? dateJoined,
      @HiveField(10)
      @JsonKey(name: 'registration_status')
      String? registrationStatus,
      @HiveField(11)
      @JsonKey(name: 'registration_datetime')
      dynamic registrationDatetime,
      @HiveField(12) @JsonKey(name: 'reject_comment') dynamic rejectComment,
      @HiveField(13) dynamic country,
      @HiveField(14) dynamic city,
      @HiveField(15) dynamic street,
      @HiveField(16) @JsonKey(name: 'zip_code') dynamic zipCode,
      @HiveField(17) String? role,
      @HiveField(18) @JsonKey(name: 'customer_type') dynamic customerType,
      @HiveField(19) String? email,
      @HiveField(20) @JsonKey(name: 'phone_number') dynamic phoneNumber,
      @HiveField(21) dynamic picture});
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
              as dynamic,
      rejectComment: freezed == rejectComment
          ? _value.rejectComment
          : rejectComment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as dynamic,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as dynamic,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as dynamic,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      customerType: freezed == customerType
          ? _value.customerType
          : customerType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {@HiveField(0) String? id,
      @HiveField(1) String? name,
      @HiveField(2) @JsonKey(name: 'last_login') DateTime? lastLogin,
      @HiveField(3) @JsonKey(name: 'is_superuser') bool? isSuperuser,
      @HiveField(4) String? username,
      @HiveField(5) @JsonKey(name: 'first_name') String? firstName,
      @HiveField(6) @JsonKey(name: 'last_name') String? lastName,
      @HiveField(7) @JsonKey(name: 'is_staff') bool? isStaff,
      @HiveField(8) @JsonKey(name: 'is_active') bool? isActive,
      @HiveField(9) @JsonKey(name: 'date_joined') DateTime? dateJoined,
      @HiveField(10)
      @JsonKey(name: 'registration_status')
      String? registrationStatus,
      @HiveField(11)
      @JsonKey(name: 'registration_datetime')
      dynamic registrationDatetime,
      @HiveField(12) @JsonKey(name: 'reject_comment') dynamic rejectComment,
      @HiveField(13) dynamic country,
      @HiveField(14) dynamic city,
      @HiveField(15) dynamic street,
      @HiveField(16) @JsonKey(name: 'zip_code') dynamic zipCode,
      @HiveField(17) String? role,
      @HiveField(18) @JsonKey(name: 'customer_type') dynamic customerType,
      @HiveField(19) String? email,
      @HiveField(20) @JsonKey(name: 'phone_number') dynamic phoneNumber,
      @HiveField(21) dynamic picture});
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
              as dynamic,
      rejectComment: freezed == rejectComment
          ? _value.rejectComment
          : rejectComment // ignore: cast_nullable_to_non_nullable
              as dynamic,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as dynamic,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as dynamic,
      street: freezed == street
          ? _value.street
          : street // ignore: cast_nullable_to_non_nullable
              as dynamic,
      zipCode: freezed == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      role: freezed == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      customerType: freezed == customerType
          ? _value.customerType
          : customerType // ignore: cast_nullable_to_non_nullable
              as dynamic,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      {@HiveField(0) this.id,
      @HiveField(1) this.name,
      @HiveField(2) @JsonKey(name: 'last_login') this.lastLogin,
      @HiveField(3) @JsonKey(name: 'is_superuser') this.isSuperuser,
      @HiveField(4) this.username,
      @HiveField(5) @JsonKey(name: 'first_name') this.firstName,
      @HiveField(6) @JsonKey(name: 'last_name') this.lastName,
      @HiveField(7) @JsonKey(name: 'is_staff') this.isStaff,
      @HiveField(8) @JsonKey(name: 'is_active') this.isActive,
      @HiveField(9) @JsonKey(name: 'date_joined') this.dateJoined,
      @HiveField(10)
      @JsonKey(name: 'registration_status')
      this.registrationStatus,
      @HiveField(11)
      @JsonKey(name: 'registration_datetime')
      this.registrationDatetime,
      @HiveField(12) @JsonKey(name: 'reject_comment') this.rejectComment,
      @HiveField(13) this.country,
      @HiveField(14) this.city,
      @HiveField(15) this.street,
      @HiveField(16) @JsonKey(name: 'zip_code') this.zipCode,
      @HiveField(17) this.role,
      @HiveField(18) @JsonKey(name: 'customer_type') this.customerType,
      @HiveField(19) this.email,
      @HiveField(20) @JsonKey(name: 'phone_number') this.phoneNumber,
      @HiveField(21) this.picture});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  @HiveField(0)
  final String? id;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  @JsonKey(name: 'last_login')
  final DateTime? lastLogin;
  @override
  @HiveField(3)
  @JsonKey(name: 'is_superuser')
  final bool? isSuperuser;
  @override
  @HiveField(4)
  final String? username;
  @override
  @HiveField(5)
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @HiveField(6)
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @HiveField(7)
  @JsonKey(name: 'is_staff')
  final bool? isStaff;
  @override
  @HiveField(8)
  @JsonKey(name: 'is_active')
  final bool? isActive;
  @override
  @HiveField(9)
  @JsonKey(name: 'date_joined')
  final DateTime? dateJoined;
  @override
  @HiveField(10)
  @JsonKey(name: 'registration_status')
  final String? registrationStatus;
  @override
  @HiveField(11)
  @JsonKey(name: 'registration_datetime')
  final dynamic registrationDatetime;
  @override
  @HiveField(12)
  @JsonKey(name: 'reject_comment')
  final dynamic rejectComment;
  @override
  @HiveField(13)
  final dynamic country;
  @override
  @HiveField(14)
  final dynamic city;
  @override
  @HiveField(15)
  final dynamic street;
  @override
  @HiveField(16)
  @JsonKey(name: 'zip_code')
  final dynamic zipCode;
  @override
  @HiveField(17)
  final String? role;
  @override
  @HiveField(18)
  @JsonKey(name: 'customer_type')
  final dynamic customerType;
  @override
  @HiveField(19)
  final String? email;
  @override
  @HiveField(20)
  @JsonKey(name: 'phone_number')
  final dynamic phoneNumber;
  @override
  @HiveField(21)
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
            const DeepCollectionEquality()
                .equals(other.registrationDatetime, registrationDatetime) &&
            const DeepCollectionEquality()
                .equals(other.rejectComment, rejectComment) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.street, street) &&
            const DeepCollectionEquality().equals(other.zipCode, zipCode) &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality()
                .equals(other.customerType, customerType) &&
            (identical(other.email, email) || other.email == email) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
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
        const DeepCollectionEquality().hash(registrationDatetime),
        const DeepCollectionEquality().hash(rejectComment),
        const DeepCollectionEquality().hash(country),
        const DeepCollectionEquality().hash(city),
        const DeepCollectionEquality().hash(street),
        const DeepCollectionEquality().hash(zipCode),
        role,
        const DeepCollectionEquality().hash(customerType),
        email,
        const DeepCollectionEquality().hash(phoneNumber),
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
      {@HiveField(0) final String? id,
      @HiveField(1) final String? name,
      @HiveField(2) @JsonKey(name: 'last_login') final DateTime? lastLogin,
      @HiveField(3) @JsonKey(name: 'is_superuser') final bool? isSuperuser,
      @HiveField(4) final String? username,
      @HiveField(5) @JsonKey(name: 'first_name') final String? firstName,
      @HiveField(6) @JsonKey(name: 'last_name') final String? lastName,
      @HiveField(7) @JsonKey(name: 'is_staff') final bool? isStaff,
      @HiveField(8) @JsonKey(name: 'is_active') final bool? isActive,
      @HiveField(9) @JsonKey(name: 'date_joined') final DateTime? dateJoined,
      @HiveField(10)
      @JsonKey(name: 'registration_status')
      final String? registrationStatus,
      @HiveField(11)
      @JsonKey(name: 'registration_datetime')
      final dynamic registrationDatetime,
      @HiveField(12)
      @JsonKey(name: 'reject_comment')
      final dynamic rejectComment,
      @HiveField(13) final dynamic country,
      @HiveField(14) final dynamic city,
      @HiveField(15) final dynamic street,
      @HiveField(16) @JsonKey(name: 'zip_code') final dynamic zipCode,
      @HiveField(17) final String? role,
      @HiveField(18) @JsonKey(name: 'customer_type') final dynamic customerType,
      @HiveField(19) final String? email,
      @HiveField(20) @JsonKey(name: 'phone_number') final dynamic phoneNumber,
      @HiveField(21) final dynamic picture}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  @HiveField(0)
  String? get id;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  @JsonKey(name: 'last_login')
  DateTime? get lastLogin;
  @override
  @HiveField(3)
  @JsonKey(name: 'is_superuser')
  bool? get isSuperuser;
  @override
  @HiveField(4)
  String? get username;
  @override
  @HiveField(5)
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @HiveField(6)
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @HiveField(7)
  @JsonKey(name: 'is_staff')
  bool? get isStaff;
  @override
  @HiveField(8)
  @JsonKey(name: 'is_active')
  bool? get isActive;
  @override
  @HiveField(9)
  @JsonKey(name: 'date_joined')
  DateTime? get dateJoined;
  @override
  @HiveField(10)
  @JsonKey(name: 'registration_status')
  String? get registrationStatus;
  @override
  @HiveField(11)
  @JsonKey(name: 'registration_datetime')
  dynamic get registrationDatetime;
  @override
  @HiveField(12)
  @JsonKey(name: 'reject_comment')
  dynamic get rejectComment;
  @override
  @HiveField(13)
  dynamic get country;
  @override
  @HiveField(14)
  dynamic get city;
  @override
  @HiveField(15)
  dynamic get street;
  @override
  @HiveField(16)
  @JsonKey(name: 'zip_code')
  dynamic get zipCode;
  @override
  @HiveField(17)
  String? get role;
  @override
  @HiveField(18)
  @JsonKey(name: 'customer_type')
  dynamic get customerType;
  @override
  @HiveField(19)
  String? get email;
  @override
  @HiveField(20)
  @JsonKey(name: 'phone_number')
  dynamic get phoneNumber;
  @override
  @HiveField(21)
  dynamic get picture;
  @override
  @JsonKey(ignore: true)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
