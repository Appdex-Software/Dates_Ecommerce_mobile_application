import 'package:date_farm/src/app_features/authentication/presentation/providers/auth_ui_service.dart';
import 'package:date_farm/src/user_features/order/data/models/order_pdf_model/order_pdf_model.dart';

import '../../../../core/errors/custom_error.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/repository_impl/order_repository_impl.dart';
import '../entities/order_user_entity.dart';

part 'order_repository.g.dart';

@Riverpod(keepAlive: true)
class OrderRepository extends _$OrderRepository {
  @override
  FutureOr<OrderUserEntity?> build() async {
    return getOrderEntity();
  }

  final OrderRepositoryImpl orderSourceImpl = OrderRepositoryImpl();

  OrderUserEntity? _orderEntity;
  OrderUserEntity? getOrderEntity() => _orderEntity;

  Future<OrderUserEntity?> getOrders() async {
    try {
      final id =
          ref.watch(authUiServiceProvider.notifier).getUserData()?.user?.id;
      _orderEntity = await orderSourceImpl.getOrders(id: id);
      return _orderEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get Orders', err: e, stackTrace: stack);
    }
  }

  Future<int?> updateOrders({Map<dynamic, dynamic>? body}) async {
    try {
      final statusCode = await orderSourceImpl.updateOrders(body: body);
      return statusCode;
    } catch (e, stack) {
      throw CustomError('Failed to update Orders', err: e, stackTrace: stack);
    }
  }
  Future<String?> getPdfOrders({OrderPdfModel? body}) async {
    try {
      final result = await orderSourceImpl.getPdfOrders(body: body);
      return result;
    } catch (e, stack) {
      throw CustomError('Failed to update Orders', err: e, stackTrace: stack);
    }
  }
}
