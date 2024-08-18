import 'package:date_farm/src/app_features/authentication/data/models/user_dto/user_dto.dart';

import '../../../../core/errors/custom_error.dart';
import '../../domain/entities/user_entity.dart';
import '../datasource/authentication_datasoure.dart';

abstract class BaseAuthenticationRepository {
  Future<UserEntity> loginUser(
      {String? email, String? password});

}

class AuthenticationRepositoryImpl implements BaseAuthenticationRepository {
  final AuthenticationSourceImpl dataSource = AuthenticationSourceImpl();

  @override
  Future<UserEntity> loginUser(
      {String? email, String? password}) async {
    try {
      return await dataSource.loginUser(email: email,password: password).then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to login', err: e, stackTrace: stack);
    }
  }

  // @override
  // Future<PatientUserEntity?> registerNewPatient(
  //     RequiredRegisterationPatientInfo requiredRegisterPatientInfo) async {
  //   try {
  //     return await dataSource
  //         .registerNewPatient(requiredRegisterPatientInfo)
  //         .then((value) {
  //       return value?.toEntity();
  //     });
  //   } catch (e, stack) {
  //     throw CustomError('Failed to register', err: e, stackTrace: stack);
  //   }
  // }

  // @override
  // Future<PatientBalanceEntity?> checkPatientBalance(
  //     String patientId, String patientIdNum) async {
  //   try {
  //     return await dataSource
  //         .checkPatientBalance(patientId, patientIdNum)
  //         .then((value) => value?.toEntity());
  //   } catch (e, stack) {
  //     throw CustomError('Failed to check balance', err: e, stackTrace: stack);
  //   }
  // }
}
