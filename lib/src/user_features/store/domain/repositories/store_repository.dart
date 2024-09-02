import 'package:date_farm/src/user_features/store/data/models/create_order_body/create_order_body.dart';
import 'package:date_farm/src/user_features/store/data/models/date_product_dto/date_data.dart';
import 'package:date_farm/src/user_features/store/data/repositories_impl/store_repository_impl.dart';
import 'package:date_farm/src/user_features/store/domain/entities/categories_entity.dart';
import 'package:date_farm/src/user_features/store/domain/entities/create_order_response_entity.dart';
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

  final StoreRepositoryImpl storeSourceImpl = StoreRepositoryImpl();

  DateProductEntity? _dateProductEntity;
  DateProductEntity? getDateProductEntity() => _dateProductEntity;
  CategoriesEntity? _categoriesEntity;
  CategoriesEntity? getCategoriesEntity() => _categoriesEntity;

  Future<DateProductEntity?> getProducts() async {
    try {
      _dateProductEntity = await storeSourceImpl.getProducts();
      return _dateProductEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get products', err: e, stackTrace: stack);
    }
  }
  Future<CategoriesEntity?> getCategories() async {
    try {
      _categoriesEntity = await storeSourceImpl.getCategories();
      return _categoriesEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get categories', err: e, stackTrace: stack);
    }
  }

  Future<int?> createProducts({DateData? data}) async {
    try {
      final statusCode = await storeSourceImpl.createProducts(data: data);
      return statusCode;
    } catch (e, stack) {
      throw CustomError('Failed to create products', err: e, stackTrace: stack);
    }
  }

  Future<int?> patchProducts({DateData? data}) async {
    try {
      final statusCode = await storeSourceImpl.patchProducts(data: data);
      return statusCode;
    } catch (e, stack) {
      throw CustomError('Failed to update products', err: e, stackTrace: stack);
    }
  }

  CreateOrderResponseEntity? _createOrderResponseEntity;
  CreateOrderResponseEntity? getCreateOrderResponseEntity() =>
      _createOrderResponseEntity;

  Future<CreateOrderResponseEntity?> createOrder(
      {CreateOrderBody? orderBody}) async {
    try {
      _createOrderResponseEntity =
          await storeSourceImpl.createOrder(order: orderBody);
      return _createOrderResponseEntity;
    } catch (e, stack) {
      throw CustomError('Failed to create order', err: e, stackTrace: stack);
    }
  }
}
