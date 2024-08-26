import 'package:date_farm/src/app_features/authentication/data/models/user_dto/user_data.dart';
import 'package:date_farm/src/app_features/authentication/domain/entities/user_entity.dart';
import 'package:date_farm/src/core/constants/app_constants.dart';
import 'package:date_farm/src/core/helpers/session_manager.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/repositories/authentication_repository.dart';
part 'auth_ui_service.g.dart';

@Riverpod(keepAlive: true, dependencies: [
  AuthenticationRepository,
])
class AuthUiService extends _$AuthUiService {
  @override
  FutureOr<UserData?> build() {
    return fetchSavedPatientInfo();
  }

  bool? _isVerified;
  bool? getIsVerified() {
    return _isVerified;
  }

  UserEntity? _userEntity;
  UserEntity? getUserEntity() => _userEntity;
  UserData? _userData;
  UserData? getUserData() => _userData;

  // String _patientGender = 'm';
  // String getPatientGender() {
  //   logger.d('patient $_patientGender');
  //   return _patientGender;
  // }

  // savePatientGender(String gender) {
  //   _patientGender = gender;
  // }

  // void saveRegisterPatientInfo(
  //     RequiredRegisterationPatientInfo registerPatientInfo) {
  //   _registeredPatientInfo = registerPatientInfo;
  // }
  Future<UserData?> fetchSavedPatientInfo() async {
    _userData = await ref
        .read(authenticationRepositoryProvider.notifier)
        .fetchSavedUserInfo();
    return _userData;
  }

  Future<UserEntity?> loginUser({String? email, String? password}) async {
    try {
      state = const AsyncLoading();
      _userEntity = await ref
          .watch(authenticationRepositoryProvider.notifier)
          .loginUser(email: email, password: password);
      if (_userEntity?.statusCode == 200) {
        bool exists = Hive.isBoxOpen(userInfoBox);
        if (!exists) {
          await Hive.openBox(userInfoBox);
        }
        await sessionManager.setAuthToken(
            tokenn: _userEntity?.data?.accessToken ?? '');
        var patientBox = Hive.box(userInfoBox);
        patientBox.add(_userEntity?.data);
      }
      _userData = _userEntity?.data;
      state = AsyncData(_userData);
      return _userEntity;
    } on Exception catch (e) {
      throw e.toString();
    }
  }

  // Future<void> verifyOtp() async {
  //   state = const AsyncLoading();
  //   try {
  //     if (_patientUser != null && _patientUser?.code == 200) {
  //       await ref.watch(authenticationRepositoryProvider.notifier).verifyOtp();
  //     }
  //     state = AsyncData(_patientUser?.data);
  //   } catch (e) {
  //     throw e.toString();
  //   }
  // }

  // Future<PatientUserEntity?> registerPatientUser(
  //     RequiredRegisterationPatientInfo patientInfo) async {
  //   try {
  //     saveRegisterPatientInfo(patientInfo);
  //     state = const AsyncLoading();
  //     if (_registeredPatientInfo != null) {
  //       _patientUser = await ref
  //           .watch(authenticationRepositoryProvider.notifier)
  //           .registerNewPatient(_registeredPatientInfo!);
  //     }
  //     state = AsyncData(_patientUser?.data);
  //     return _patientUser;
  //   } catch (e) {
  //     throw e.toString();
  //   }
  // }

  // void clearRegisteredPatientInfo() {
  //   _registeredPatientInfo = null;
  // }

  // void clearPatientUser() {
  //   _patientUser = null;
  // }

  // PatientInfo? _patientInfo;
  // PatientInfo? getPatientInfo() {
  //   return _patientInfo;
  // }

  // PatientInfo? fetchSavedPatientInfo() {
  //   _patientInfo =
  //       ref.read(authenticationRepositoryProvider.notifier).getPatientInfo();
  //   return _patientInfo;
  // }

  // PatientBalanceEntity? _patientBalance;
  // PatientBalanceEntity? getPatientBalance() {
  //   return _patientBalance;
  // }

  // num? _walletBalance;
  // num? getWalletBalance() {
  //   logger.d('wallet $_walletBalance');
  //   return _walletBalance;
  // }

  // Future<PatientBalanceEntity?> checkPatientBalance() async {
  //   _walletBalance = null;
  //   try {
  //     // state = const AsyncLoading();
  //     _patientInfo ??=
  //         ref.read(authenticationRepositoryProvider.notifier).getPatientInfo();
  //     if (_patientInfo != null) {
  //       logger.d('patient info ${_patientInfo?.toJson()}');
  //       _patientBalance = await ref
  //           .watch(authenticationRepositoryProvider.notifier)
  //           .checkPatientBalance(
  //             patientId: _patientInfo?.id.toString(),
  //             patientIdNum: _patientInfo?.fileNum.toString(),
  //           );
  //       if (_patientBalance?.code == 200) {
  //         _walletBalance = _patientBalance?.walletData?[0].balance?.abs();
  //       }
  //     } else {
  //       logger.d('patient info is null');
  //       _walletBalance = 0;
  //     }
  //     // state = AsyncData(_patientInfo);
  //     return _patientBalance;
  //   } catch (e) {
  //     throw e.toString();
  //   }
  // }

  // void logout() async {
  //   await ref.read(authenticationRepositoryProvider.notifier).logout();
  //   state = const AsyncLoading();
  //   _patientUser = null;
  //   _patientInfo = null;
  //   _walletBalance = null;
  //   _walletBalance = null;
  //   ref.invalidate(reservationRepositoryProvider);
  //   ref.invalidate(insuranceRepositoryProvider);
  //   ref.invalidate(medicalRecordsProvider);
  //   ref.invalidate(myBookingStateProvider);
  //   ref.watch(myBookingStateProvider.notifier).resetAll();

  //   state = const AsyncData(null);
  // }

  logout() async {
    var patientBox = Hive.box(userInfoBox);
    sessionManager.setLogin(statue: false);
    sessionManager.setAuthToken(tokenn: '');
    _userEntity = null;
    patientBox.clear();
    patientBox.close();
    ref.invalidateSelf();
    state = const AsyncData(null);
  }

  // resetAll() {
  //   _userPhoneNumber = null;
  //   _userNationalID = null;
  //   _userMedicalFileNo = null;
  //   _userCountryCode = null;
  //   _registeredPatientInfo = null;
  // }
}
