import 'package:date_farm/src/user_features/order/data/datasource/order_datasource.dart';
import 'package:date_farm/src/user_features/order/data/models/order_user_dto/order_user_dto.dart';
import 'package:date_farm/src/user_features/order/domain/entities/order_user_entity.dart';

import '../../../../core/errors/custom_error.dart';
import '../models/order_pdf_model/order_pdf_model.dart';

abstract class BaseOrderRepository {
  Future<OrderUserEntity> getOrders({String? id});
  Future<int?> updateOrders({Map<dynamic, dynamic>? body});
  Future<String?> getPdfOrders({OrderPdfModel? body});
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
      throw CustomError('Failed to get order ', err: e, stackTrace: stack);
    }
  }

  @override
  Future<int?> updateOrders({Map<dynamic, dynamic>? body}) async {
    try {
      return await dataSource.updateOrders(body: body).then((value) {
        return value;
      });
    } catch (e, stack) {
      throw CustomError('Failed to update order', err: e, stackTrace: stack);
    }
  }
  @override
  Future<String?> getPdfOrders({OrderPdfModel? body}) async {
    try {
      return await dataSource.getPdfOrders(body: body).then((value) {
        return value;
      });
    } catch (e, stack) {
      throw CustomError('Failed to pdf order', err: e, stackTrace: stack);
    }
  }
}
