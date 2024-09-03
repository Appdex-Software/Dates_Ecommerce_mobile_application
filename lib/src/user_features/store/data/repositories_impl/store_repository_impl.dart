import 'package:date_farm/src/user_features/store/data/datasource/store_datasource.dart';
import 'package:date_farm/src/user_features/store/data/models/categories_dto/categories_dto.dart';
import 'package:date_farm/src/user_features/store/data/models/create_order_response_dto/create_order_response_dto.dart';
import 'package:date_farm/src/user_features/store/data/models/date_product_dto/date_data.dart';
import 'package:date_farm/src/user_features/store/data/models/date_product_dto/date_product_dto.dart';
import 'package:date_farm/src/user_features/store/domain/entities/categories_entity.dart';
import 'package:date_farm/src/user_features/store/domain/entities/create_order_response_entity.dart';
import 'package:date_farm/src/user_features/store/domain/entities/date_product_entity.dart';

import '../../../../core/errors/custom_error.dart';
import '../models/create_order_body/create_order_body.dart';

abstract class BaseStoreRepository {
  Future<DateProductEntity> getProducts();
  Future<CategoriesEntity> getCategories();
  Future<CreateOrderResponseEntity> createOrder({CreateOrderBody? order});
  Future<int?> createProducts({DateData? data});
  Future<int?> patchProducts({DateData? data});
}

class StoreRepositoryImpl implements BaseStoreRepository {
  final StoreSourceImpl dataSource = StoreSourceImpl();

  @override
  Future<DateProductEntity> getProducts() async {
    try {
      return await dataSource.getProducts().then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to products', err: e, stackTrace: stack);
    }
  }
  @override
  Future<CategoriesEntity> getCategories() async {
    try {
      return await dataSource.getCategories().then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to get Categories', err: e, stackTrace: stack);
    }
  }

  @override
  Future<int?> createProducts({DateData? data}) async {
    try {
      return await dataSource.createProducts(data: data).then((value) {
        return value;
      });
    } catch (e, stack) {
      throw CustomError('Failed to products', err: e, stackTrace: stack);
    }
  }

  @override
  Future<int?> patchProducts({DateData? data}) async {
    try {
      return await dataSource.patchProducts(data: data).then((value) {
        return value;
      });
    } catch (e, stack) {
      throw CustomError('Failed to products', err: e, stackTrace: stack);
    }
  }

  @override
  Future<CreateOrderResponseEntity> createOrder(
      {CreateOrderBody? order}) async {
    try {
      return await dataSource.createOrder(order: order).then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to products', err: e, stackTrace: stack);
    }
  }
}
