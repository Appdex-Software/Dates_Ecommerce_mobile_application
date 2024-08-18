// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

import 'user.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
class UserData with _$UserData {
  factory UserData({
    @JsonKey(name: 'access_token') String? accessToken,
    User? user,
  }) = _Data;

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}
