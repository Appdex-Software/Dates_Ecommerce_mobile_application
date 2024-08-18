import '../../../../core/errors/custom_error.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repository_impl/authentication_repository_impl.dart';

import '../entities/user_entity.dart';
part 'authentication_repository.g.dart';

@Riverpod(keepAlive: true)
class AuthenticationRepository extends _$AuthenticationRepository {
  @override
  FutureOr<UserEntity?> build() async {
    return getUserEntity();
  }

  final AuthenticationRepositoryImpl authenticationSourceImpl =
      AuthenticationRepositoryImpl();

  UserEntity? _userEntity;
  UserEntity? getUserEntity() => _userEntity;

  // PatientInfo? _patientInfo;
  // PatientInfo? getPatientInfo() {
  //   return _patientInfo;
  // }

  // Future<PatientInfo?> fetchSavedPatientInfo() async {
  //   await Hive.openBox(patientInfoBox);
  //   bool exists = Hive.isBoxOpen(patientInfoBox);
  //   if (exists) {
  //     var patientBox = Hive.box(patientInfoBox);
  //     if (patientBox.isNotEmpty) {
  //       _patientInfo = patientBox.getAt(0);
  //       logger.d('patient info from hive${_patientInfo?.toJson()}');
  //     }
  //   }
  //   return _patientInfo;
  // }

  Future<UserEntity?> loginUser({String? email,String? password}) async {
    try {
      _userEntity =
          await authenticationSourceImpl.loginUser(email: email,password: password);
      return _userEntity;
    } catch (e, stack) {
      throw CustomError('Failed to login', err: e, stackTrace: stack);
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

  // logout() async {
  //   var patientBox = Hive.box(patientInfoBox);
  //   _patientInfo = null;
  //   patientBox.clear();
  //   patientBox.close();
  //   ref.invalidateSelf();
  // }
}
