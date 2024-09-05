import 'package:date_farm/src/user_features/store/domain/entities/categories_entity.dart';
import 'package:date_farm/src/user_features/store/domain/entities/date_product_entity.dart';
import 'package:date_farm/src/user_features/store/domain/repositories/store_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../../user_features/store/data/models/date_product_dto/date_data.dart';

part 'inventory_provider.g.dart';

@Riverpod(keepAlive: true)
class InventoryService extends _$InventoryService {
  @override
  FutureOr<DateProductEntity?> build() async {
    return getDateProducts();
  }

  DateProductEntity? _dateProductEntity;
  DateProductEntity? getDateProductEntity() => _dateProductEntity;
  CategoriesEntity? _categoriesEntity;
  CategoriesEntity? getCategoriesEntity() => _categoriesEntity;

  bool? _isAvailable;
  bool? getIsAvailable() => _isAvailable;
  setIsAvailable(bool? value) {
    _isAvailable = value;
    state = AsyncData(_dateProductEntity);
  }

  Future<DateProductEntity?> getDateProducts() async {
    state = const AsyncLoading();
    final storeService = ref.watch(storeRepositoryProvider.notifier);

    try {
      _dateProductEntity = await storeService.getProducts();
      state = AsyncData(_dateProductEntity);

      return _dateProductEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get products', err: e, stackTrace: stack);
    }
  }

  Future<CategoriesEntity?> getCategories() async {
    state = const AsyncLoading();
    final storeService = ref.watch(storeRepositoryProvider.notifier);

    try {
      _categoriesEntity = await storeService.getCategories();
      state = AsyncData(_dateProductEntity);

      return _categoriesEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get categories', err: e, stackTrace: stack);
    }
  }

  Future<int?> createProducts({DateData? data}) async {
    final storeService = ref.watch(storeRepositoryProvider.notifier);
    state = const AsyncLoading();

    try {
      final statusCode = await storeService.createProducts(data: data);
      state = AsyncData(_dateProductEntity);

      return statusCode;
    } catch (e, stack) {
      throw CustomError('Failed to create products', err: e, stackTrace: stack);
    }
  }

  Future<int?> patchProducts({DateData? data}) async {
    final storeService = ref.watch(storeRepositoryProvider.notifier);
    state = const AsyncLoading();

    try {
      final statusCode = await storeService.patchProducts(data: data);
      state = AsyncData(_dateProductEntity);

      return statusCode;
    } catch (e, stack) {
      throw CustomError('Failed to patch products', err: e, stackTrace: stack);
    }
  }
}
