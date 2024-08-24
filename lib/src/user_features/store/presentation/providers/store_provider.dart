
import 'package:date_farm/src/user_features/store/domain/entities/date_product_entity.dart';
import 'package:date_farm/src/user_features/store/domain/repositories/store_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/custom_error.dart';

part 'store_provider.g.dart';

@Riverpod(keepAlive: true)
class StoreService extends _$StoreService {
  @override
  FutureOr<DateProductEntity?> build() async {
    return getProducts();
  }

  DateProductEntity? _dateProductEntity;
  DateProductEntity? getDateProductEntity() =>
      _dateProductEntity;

  Future<DateProductEntity?> getProducts() async {
    final storeService = ref.watch(storeRepositoryProvider.notifier);

    try {
      _dateProductEntity = await storeService.getProducts();
      return _dateProductEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get products',
          err: e, stackTrace: stack);
    }
  }
}
