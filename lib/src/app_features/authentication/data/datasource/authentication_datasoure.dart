import 'package:date_farm/src/app_features/authentication/data/models/user_dto/user_dto.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';

abstract class AuthenticationSource {
  Future<UserDto> loginUser({String? email, String? password});
}

class AuthenticationSourceImpl implements AuthenticationSource {
  @override
  Future<UserDto> loginUser({String? email, String? password}) async {
    var body = {AppStrings.email: email, AppStrings.password: password};
    logger.d('loginUser body: $body');
    try {
      final response = await DioClient().dio.post(
            AppConstants.loginApiUrl,
            data: body,
          );
      logger.d('loginUser response: ${response.data}');
      if (response.statusCode == 200) {
        return UserDto.fromJson(response.data);
      } else {
        throw CustomError(response.statusMessage ?? 'Error in loginPatient');
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  // @override
  // Future<PatientUserDto?> registerNewPatient(
  //     RequiredRegisterationPatientInfo requiredRegisterPatientInfo) async {
  //   try {
  //     final response = await DioClient().dio.post(
  //           AppConstants.registerApiUrl,
  //           data: requiredRegisterPatientInfo.toJson(),
  //           options: Options(followRedirects: false, headers: {
  //             HttpHeaders.contentTypeHeader: 'application/json',
  //           }),
  //         );
  //     if (response.statusCode == 200) {
  //       return PatientUserDto.fromJson(response.data);
  //     } else {
  //       throw CustomError(
  //           response.statusMessage ?? 'Error in registerNewPatient');
  //     }
  //   } on CustomError catch (e) {
  //     throw e.errMassage;
  //   }
  // }

  // @override
  // Future<PatientBalanceDto?> checkPatientBalance(
  //     String patientId, String patientIdNum) async {
  //   try {
  //     final response = await DioClient().dio.post(
  //           AppConstants.checkBalanceApiUrl,
  //           data: {
  //             AppStrings.patientId: patientId,
  //             AppStrings.patientIdNum: patientIdNum,
  //           },
  //           options: Options(followRedirects: false, headers: {
  //             HttpHeaders.contentTypeHeader: 'application/json',
  //           }),
  //         );
  //     if (response.statusCode == 200) {
  //       return PatientBalanceDto.fromJson(response.data);
  //     } else {
  //       throw CustomError(
  //           response.statusMessage ?? 'Error in checkPatientBalance');
  //     }
  //   } on CustomError catch (e) {
  //     throw e.errMassage;
  //   }
  // }
}
