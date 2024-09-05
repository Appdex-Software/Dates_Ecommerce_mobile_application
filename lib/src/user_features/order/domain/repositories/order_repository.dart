import 'package:date_farm/src/app_features/authentication/presentation/providers/auth_ui_service.dart';

import '../../../../core/errors/custom_error.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/models/order_user_dto/order_user_data.dart';
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

  Future<int?> updateOrders({OrderUserData? body}) async {
    try {
      final statusCode = await orderSourceImpl.updateOrders(body: body);
      return statusCode;
    } catch (e, stack) {
      throw CustomError('Failed to update Orders', err: e, stackTrace: stack);
    }
  }
}
