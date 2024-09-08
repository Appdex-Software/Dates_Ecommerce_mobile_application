import 'package:date_farm/src/admin_features/user_modification/domain/repositories/user_modification_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/custom_error.dart';
import '../../data/models/user_modification_dto/user_modification_data.dart';
import '../../domain/entities/user_modification_entity.dart';

part 'user_modification_provider.g.dart';

@Riverpod(keepAlive: true)
class UserModificationService extends _$UserModificationService {
  @override
  FutureOr<UserModificationEntity?> build() async {
    return getUser();
  }

  UserModificationEntity? _userModificationEntity;
  UserModificationEntity? getUserModificationEntity() =>
      _userModificationEntity;

  Future<UserModificationEntity?> getUser() async {
    final userModService =
        ref.watch(userModificationRepositoryProvider.notifier);
    state = const AsyncLoading();

    try {
      _userModificationEntity = await userModService.getUsers();
      state = AsyncData(_userModificationEntity);

      return _userModificationEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get user', err: e, stackTrace: stack);
    }
  }

  Future<int?> addUser({UserModificationData? body}) async {
    final userModService =
        ref.watch(userModificationRepositoryProvider.notifier);
    state = const AsyncLoading();
    try {
      final statusCode = await userModService.addUser(body: body);
      state = AsyncData(_userModificationEntity);
      return statusCode;
    } catch (e, stack) {
      throw CustomError('Failed to add user', err: e, stackTrace: stack);
    }
  }

  Future<int?> patchUser({UserModificationData? body}) async {
    final userModService =
        ref.watch(userModificationRepositoryProvider.notifier);
    state = const AsyncLoading();
    try {
      final statusCode = await userModService.patchUser(body: body);
      state = AsyncData(_userModificationEntity);
      return statusCode;
    } catch (e, stack) {
      throw CustomError('Failed to patch user', err: e, stackTrace: stack);
    }
  }
}
