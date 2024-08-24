
import 'package:date_farm/src/user_features/store/data/datasource/store_datasource.dart';
import 'package:date_farm/src/user_features/store/data/models/date_product_dto/date_product_dto.dart';
import 'package:date_farm/src/user_features/store/domain/entities/date_product_entity.dart';

import '../../../../core/errors/custom_error.dart';


abstract class BaseStoreRepository {
  Future<DateProductEntity> getProducts({String? accessToken});
}

class StoreRepositoryImpl implements BaseStoreRepository {
  final StoreSourceImpl dataSource = StoreSourceImpl();

  @override
  Future<DateProductEntity> getProducts({String? accessToken}) async {
    try {
      return await dataSource.getProducts(accessToken: accessToken)
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to products', err: e, stackTrace: stack);
    }
  }

}
