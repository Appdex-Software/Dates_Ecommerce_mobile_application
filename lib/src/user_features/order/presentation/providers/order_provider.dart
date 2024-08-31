import 'package:date_farm/src/user_features/order/domain/repositories/order_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/custom_error.dart';
import '../../domain/entities/order_user_entity.dart';

part 'order_provider.g.dart';

@Riverpod(keepAlive: true)
class OrderService extends _$OrderService {
  @override
  FutureOr<OrderUserEntity?> build() async {
    return getOrders();
  }

  OrderUserEntity? _orderUserEntity;
  OrderUserEntity? getOrderUserEntity() => _orderUserEntity;

  Future<OrderUserEntity?> getOrders() async {
    state = const AsyncLoading();
    final orderService = ref.watch(orderRepositoryProvider.notifier);

    try {
      _orderUserEntity = await orderService.getOrders();
    state = AsyncData(_orderUserEntity);

      return _orderUserEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get orders', err: e, stackTrace: stack);
    }
  }
}
