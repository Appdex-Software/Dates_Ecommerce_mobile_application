import 'package:date_farm/src/admin_features/user_modification/data/models/user_modification_dto/user_modification_dto.dart';
import 'package:dio/dio.dart';

import '../../../../app_features/authentication/data/models/user_authentication_error_dto/user_authentication_error_dto.dart';
import '../../../../core/api/apis.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../models/user_modification_dto/user_modification_data.dart';

abstract class UserModificationSource {
  Future<UserModificationDto> getUsers({String? queryParameter});
  Future<UserAuthenticationErrorDto?> addUsers({UserModificationData? body});
  Future<UserAuthenticationErrorDto?> patchUsers({UserModificationData? body});
}

class UserModificationSourceImpl implements UserModificationSource {
  @override
  Future<UserModificationDto> getUsers({String? queryParameter}) async {
    try {
      final response = await DioClient().dio.get(
            options: Options(
              validateStatus: (status) {
                return status! < 500;
              },
              followRedirects: false,
            ),
            "${AppConstants.getUserApiUrl}$queryParameter",
          );
      logger.d('get Users response: ${response.data}');
      if (response.statusCode == 200) {
        return UserModificationDto.fromJson(response.data);
      } else {
        return UserModificationDto.fromJson(response.data);
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<UserAuthenticationErrorDto> addUsers(
      {UserModificationData? body}) async {
    try {
      final response = await DioClient().dio.post(
          options: Options(
            validateStatus: (status) {
              return status! < 500;
            },
            followRedirects: false,
          ),
          AppConstants.getUserApiUrl,
          data: body?.toJson());
      logger.d('addNews response: ${response.data}');
      return UserAuthenticationErrorDto.fromJson(response.data);
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<UserAuthenticationErrorDto> patchUsers(
      {UserModificationData? body}) async {
    try {
      final response = await DioClient().dio.patch(
          options: Options(
            validateStatus: (status) {
              return status! < 500;
            },
            followRedirects: false,
          ),
          "${AppConstants.getUserApiUrl}/${body?.id}",
          data: body?.toJson());
      logger.d('addNews response: ${response.data}');
      return UserAuthenticationErrorDto.fromJson(response.data);
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
