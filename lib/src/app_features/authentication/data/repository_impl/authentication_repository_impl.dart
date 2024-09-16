
import 'package:date_farm/src/app_features/authentication/data/models/user_authentication_error_dto/user_authentication_error_dto.dart';
import 'package:date_farm/src/app_features/authentication/data/models/user_dto/user_dto.dart';
import 'package:date_farm/src/app_features/authentication/domain/entities/user_authentication_error_entity.dart';

import '../../../../core/errors/custom_error.dart';
import '../../domain/entities/user_entity.dart';
import '../datasource/authentication_datasoure.dart';
import '../models/register_body/register_body.dart';

abstract class BaseAuthenticationRepository {
  Future<UserEntity> loginUser({String? email, String? password});
  Future<UserAuthenticationErrorEntity> registerUser({RegisterBody? body});
}

class AuthenticationRepositoryImpl implements BaseAuthenticationRepository {
  final AuthenticationSourceImpl dataSource = AuthenticationSourceImpl();

  @override
  Future<UserEntity> loginUser({String? email, String? password}) async {
    try {
      return await dataSource
          .loginUser(email: email, password: password)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to login', err: e, stackTrace: stack);
    }
  }

  @override
  Future<UserAuthenticationErrorEntity> registerUser(
      {RegisterBody? body}) async {
    try {
      return await dataSource.registerUser(body: body).then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to register', err: e, stackTrace: stack);
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
