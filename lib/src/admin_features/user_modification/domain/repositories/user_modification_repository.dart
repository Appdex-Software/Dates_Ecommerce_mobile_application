import '../../../../core/errors/custom_error.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/user_modification_dto/user_modification_data.dart';
import '../../data/repository_impl/user_modification_repository_impl.dart';
import '../entities/user_modification_entity.dart';

part 'user_modification_repository.g.dart';

@Riverpod(keepAlive: true)
class UserModificationRepository extends _$UserModificationRepository {
  @override
  FutureOr<UserModificationEntity?> build() async {
    return getUserModificationEntity();
  }

  final UserModificationRepositoryImpl userModificationSourceImpl = UserModificationRepositoryImpl();

  UserModificationEntity? _userModificationEntity;
  UserModificationEntity? getUserModificationEntity() => _userModificationEntity;

  Future<UserModificationEntity?> getUsers() async {
    try {
      _userModificationEntity = await userModificationSourceImpl.getUsers();
      return _userModificationEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get user', err: e, stackTrace: stack);
    }
  }

  Future<int?> addUser({UserModificationData? body}) async {
    try {
      final statusCode = await userModificationSourceImpl.addUsers(body: body);
      return statusCode;
    } catch (e, stack) {
      throw CustomError('Failed to add user', err: e, stackTrace: stack);
    }
  }
  Future<int?> patchUser({UserModificationData? body}) async {
    try {
      final statusCode = await userModificationSourceImpl.patchUsers(body: body);
      return statusCode;
    } catch (e, stack) {
      throw CustomError('Failed to patch user', err: e, stackTrace: stack);
    }
  }
}
