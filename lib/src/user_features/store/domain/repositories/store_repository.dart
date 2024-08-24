
import 'dart:developer';

import 'package:date_farm/src/app_features/authentication/presentation/providers/auth_ui_service.dart';
import 'package:date_farm/src/user_features/store/data/repositories_impl/store_repository_impl.dart';
import 'package:date_farm/src/user_features/store/domain/entities/date_product_entity.dart';

import '../../../../core/errors/custom_error.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'store_repository.g.dart';

@Riverpod(keepAlive: true)
class StoreRepository extends _$StoreRepository {
  @override
  FutureOr<DateProductEntity?> build() async {
    return getDateProductEntity();
  }

  final StoreRepositoryImpl storeSourceImpl =
      StoreRepositoryImpl();

  DateProductEntity? _dateProductEntity;
  DateProductEntity? getDateProductEntity() =>  _dateProductEntity;

  Future<DateProductEntity?> getProducts() async {
    try {
      final accessToken = ref.watch(authUiServiceProvider.notifier).getUserData()?.accessToken;
      log(accessToken.toString());

      _dateProductEntity = await storeSourceImpl.getProducts(accessToken: accessToken);
      return _dateProductEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get products', err: e, stackTrace: stack);
    }
  }
}
