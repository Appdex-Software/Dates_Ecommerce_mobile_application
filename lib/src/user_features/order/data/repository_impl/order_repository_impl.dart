import 'package:date_farm/src/user_features/order/data/datasource/order_datasource.dart';
import 'package:date_farm/src/user_features/order/data/models/order_user_dto/order_user_dto.dart';
import 'package:date_farm/src/user_features/order/domain/entities/order_user_entity.dart';

import '../../../../core/errors/custom_error.dart';

abstract class BaseOrderRepository {
  Future<OrderUserEntity> getOrders();
}

class OrderRepositoryImpl implements BaseOrderRepository {
  final OrderSouceImpl dataSource = OrderSouceImpl();

  @override
  Future<OrderUserEntity> getOrders({String? id}) async {
    try {
      return await dataSource.getOrders(id: id).then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to news', err: e, stackTrace: stack);
    }
  }
}
