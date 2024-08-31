// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserInfoAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 1;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[0] as String?,
      name: fields[1] as String?,
      lastLogin: fields[2] as DateTime?,
      isSuperuser: fields[3] as bool?,
      username: fields[4] as String?,
      firstName: fields[5] as String?,
      lastName: fields[6] as String?,
      isStaff: fields[7] as bool?,
      isActive: fields[8] as bool?,
      dateJoined: fields[9] as DateTime?,
      registrationStatus: fields[10] as String?,
      registrationDatetime: fields[11] as dynamic,
      rejectComment: fields[12] as dynamic,
      country: fields[13] as dynamic,
      city: fields[14] as dynamic,
      street: fields[15] as dynamic,
      zipCode: fields[16] as dynamic,
      role: fields[17] as String?,
      customerType: fields[18] as dynamic,
      email: fields[19] as String?,
      phoneNumber: fields[20] as dynamic,
      picture: fields[21] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(22)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.lastLogin)
      ..writeByte(3)
      ..write(obj.isSuperuser)
      ..writeByte(4)
      ..write(obj.username)
      ..writeByte(5)
      ..write(obj.firstName)
      ..writeByte(6)
      ..write(obj.lastName)
      ..writeByte(7)
      ..write(obj.isStaff)
      ..writeByte(8)
      ..write(obj.isActive)
      ..writeByte(9)
      ..write(obj.dateJoined)
      ..writeByte(10)
      ..write(obj.registrationStatus)
      ..writeByte(11)
      ..write(obj.registrationDatetime)
      ..writeByte(12)
      ..write(obj.rejectComment)
      ..writeByte(13)
      ..write(obj.country)
      ..writeByte(14)
      ..write(obj.city)
      ..writeByte(15)
      ..write(obj.street)
      ..writeByte(16)
      ..write(obj.zipCode)
      ..writeByte(17)
      ..write(obj.role)
      ..writeByte(18)
      ..write(obj.customerType)
      ..writeByte(19)
      ..write(obj.email)
      ..writeByte(20)
      ..write(obj.phoneNumber)
      ..writeByte(21)
      ..write(obj.picture);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: json['id'] as String?,
      name: json['name'] as String?,
      lastLogin: json['last_login'] == null
          ? null
          : DateTime.parse(json['last_login'] as String),
      isSuperuser: json['is_superuser'] as bool?,
      username: json['username'] as String?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      isStaff: json['is_staff'] as bool?,
      isActive: json['is_active'] as bool?,
      dateJoined: json['date_joined'] == null
          ? null
          : DateTime.parse(json['date_joined'] as String),
      registrationStatus: json['registration_status'] as String?,
      registrationDatetime: json['registration_datetime'],
      rejectComment: json['reject_comment'],
      country: json['country'],
      city: json['city'],
      street: json['street'],
      zipCode: json['zip_code'],
      role: json['role'] as String?,
      customerType: json['customer_type'],
      email: json['email'] as String?,
      phoneNumber: json['phone_number'],
      picture: json['picture'],
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'last_login': instance.lastLogin?.toIso8601String(),
      'is_superuser': instance.isSuperuser,
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'is_staff': instance.isStaff,
      'is_active': instance.isActive,
      'date_joined': instance.dateJoined?.toIso8601String(),
      'registration_status': instance.registrationStatus,
      'registration_datetime': instance.registrationDatetime,
      'reject_comment': instance.rejectComment,
      'country': instance.country,
      'city': instance.city,
      'street': instance.street,
      'zip_code': instance.zipCode,
      'role': instance.role,
      'customer_type': instance.customerType,
      'email': instance.email,
      'phone_number': instance.phoneNumber,
      'picture': instance.picture,
    };
