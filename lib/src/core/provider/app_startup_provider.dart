import '../constants/constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_startup_provider.g.dart';

@Riverpod(keepAlive: true, dependencies: [
  // AuthenticationRepository,
  // ReservationRepository,
  // InsuranceRepository,
  // MedicalRecords,
  // MedicalReports,
  // MyBookingState,
  // SurveyService,
])
class AppStartup extends _$AppStartup {
  @override
  FutureOr<void> build() async {
    ref.onDispose(() {
      logger.i('disposing app startup');
      // ref.invalidate(authenticationRepositoryProvider);
      // ref.invalidate(reservationRepositoryProvider);
      // ref.invalidate(insuranceRepositoryProvider);
      // ref.invalidate(medicalRecordsProvider);
      // ref.invalidate(medicalReportsProvider);
      // ref.invalidate(myBookingStateProvider);
      // ref.invalidate(surveyServiceProvider);
    });
    state = const AsyncValue.loading();

    logger.i('DSMC app startup');
    // await ref.watch(authenticationRepositoryProvider.future);
    // await ref.read(reservationRepositoryProvider.future);
    // await ref.read(insuranceRepositoryProvider.future);
    // await ref.read(medicalRecordsProvider.future);
    // await ref.read(medicalReportsProvider.future);
    // await ref.read(myBookingStateProvider.future);
    // await ref.read(surveyServiceProvider.future);
    state = const AsyncValue.data(null);

    return;
  }
}
