// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'user.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';
@HiveType(typeId: 0, adapterName: 'UserDataAdapter')
@freezed
class UserData with _$UserData {
  factory UserData({
    @HiveField(0) @JsonKey(name: 'access_token') String? accessToken,
    @HiveField(1) User? user,
  }) = _Data;

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}
