import 'package:date_farm/src/admin_features/user_modification/data/models/user_modification_dto/user_modification_dto.dart';
import 'package:dio/dio.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../models/user_modification_dto/user_modification_data.dart';

abstract class UserModificationSource {
  Future<UserModificationDto> getUsers();
  Future<int?> addUsers({UserModificationData? body});
  Future<int?> patchUsers({UserModificationData? body});
}

class UserModificationSourceImpl implements UserModificationSource {
  @override
  Future<UserModificationDto> getUsers() async {
    try {
      final response = await DioClient().dio.get(
            options: Options(
              validateStatus: (status) {
                return status! < 500;
              },
              followRedirects: false,
            ),
            AppConstants.getUserApiUrl,
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
  Future<int?> addUsers({UserModificationData? body}) async {
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
      return response.statusCode;
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<int?> patchUsers({UserModificationData? body}) async {
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
      return response.statusCode;
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
