import 'package:date_farm/src/app_features/authentication/data/models/register_body/register_body.dart';
import 'package:date_farm/src/core/constants/app_constants.dart';
import 'package:hive_flutter/adapters.dart';

import '../../../../core/errors/custom_error.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/models/user_dto/user_data.dart';
import '../../data/repository_impl/authentication_repository_impl.dart';

import '../entities/user_authentication_error_entity.dart';
import '../entities/user_entity.dart';
part 'authentication_repository.g.dart';

@Riverpod(keepAlive: true)
class AuthenticationRepository extends _$AuthenticationRepository {
  @override
  FutureOr<UserData?> build() async {
    return fetchSavedUserInfo();
  }

  final AuthenticationRepositoryImpl authenticationSourceImpl =
      AuthenticationRepositoryImpl();

  UserData? _userData;
  UserData? getUserData() => _userData;
  UserEntity? _userEntity;
  UserEntity? getUserEntity() => _userEntity;
  UserAuthenticationErrorEntity? _userErrorEntity;
  UserAuthenticationErrorEntity? getUserErrirEntity() => _userErrorEntity;

  // PatientInfo? _patientInfo;
  // PatientInfo? getPatientInfo() {
  //   return _patientInfo;
  // }

  Future<UserData?> fetchSavedUserInfo() async {
    await Hive.openBox(userInfoBox);
    bool exists = Hive.isBoxOpen(userInfoBox);
    if (exists) {
      var patientBox = Hive.box(userInfoBox);
      if (patientBox.isNotEmpty) {
        _userData = patientBox.getAt(0);
        logger.d('patient info from hive ${_userData?.toJson()}');
      }
    }
    return _userData;
  }

  Future<UserEntity?> loginUser({String? email, String? password}) async {
    try {
      _userEntity = await authenticationSourceImpl.loginUser(
          email: email, password: password);
      return _userEntity;
    } catch (e, stack) {
      throw CustomError('Failed to login', err: e, stackTrace: stack);
    }
  }

  Future<UserAuthenticationErrorEntity?> registerUser(
      {RegisterBody? body}) async {
    try {
      _userErrorEntity =
          await authenticationSourceImpl.registerUser(body: body);
      return _userErrorEntity;
    } catch (e, stack) {
      throw CustomError('Failed to register', err: e, stackTrace: stack);
    }
  }

  // Future<void> verifyOtp() async {
  //   if (_patientUserEntity != null && _patientUserEntity?.code == 200) {
  //     bool exists = Hive.isBoxOpen(patientInfoBox);
  //     if (!exists) {
  //       await Hive.openBox(patientInfoBox);
  //     }
  //     var patientBox = Hive.box(patientInfoBox);
  //     patientBox.add(_patientUserEntity?.data);
  //     await fetchSavedPatientInfo();
  //   }
  // }

  // Future<PatientUserEntity?> registerNewPatient(
  //     RequiredRegisterationPatientInfo requiredRegisterPatientInfo) async {
  //   try {
  //     _patientUserEntity = await authenticationSourceImpl
  //         .registerNewPatient(requiredRegisterPatientInfo);

  //     return _patientUserEntity;
  //   } catch (e, stack) {
  //     throw CustomError('Failed to register', err: e, stackTrace: stack);
  //   }
  // }

  // Future<PatientBalanceEntity?> checkPatientBalance(
  //     {String? patientId, String? patientIdNum}) async {
  //   try {
  //     return await authenticationSourceImpl.checkPatientBalance(
  //         patientId ?? '', patientIdNum ?? '');
  //   } catch (e, stack) {
  //     throw CustomError('Failed to check balance', err: e, stackTrace: stack);
  //   }
  // }
}
