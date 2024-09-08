import 'package:date_farm/src/admin_features/user_modification/data/models/user_modification_dto/user_modification_dto.dart';
import 'package:date_farm/src/admin_features/user_modification/domain/entities/user_modification_entity.dart';
import '../../../../core/errors/custom_error.dart';
import '../datasource/user_modification_data_source.dart';
import '../models/user_modification_dto/user_modification_data.dart';

abstract class BaseUserModificationRepository {
  Future<UserModificationEntity> getUsers();
  Future<int?> addUsers({UserModificationData? body});
  Future<int?> patchUsers({UserModificationData? body});
}

class UserModificationRepositoryImpl implements BaseUserModificationRepository {
  final UserModificationSourceImpl dataSource = UserModificationSourceImpl();

  @override
  Future<UserModificationEntity> getUsers() async {
    try {
      return await dataSource.getUsers().then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get users', err: e, stackTrace: stack);
    }
  }

  @override
  Future<int?> addUsers({UserModificationData? body}) async {
    try {
      return await dataSource.addUsers(body: body).then((value) {
        return value;
      });
    } catch (e, stack) {
      throw CustomError('Failed to add users', err: e, stackTrace: stack);
    }
  }

  @override
  Future<int?> patchUsers({UserModificationData? body}) async {
    try {
      return await dataSource.patchUsers(body: body).then((value) {
        return value;
      });
    } catch (e, stack) {
      throw CustomError('Failed to patch users', err: e, stackTrace: stack);
    }
  }
}
