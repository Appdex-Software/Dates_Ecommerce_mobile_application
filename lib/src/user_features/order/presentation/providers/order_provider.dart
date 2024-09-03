// ignore_for_file: unused_result


import 'package:date_farm/src/user_features/order/domain/repositories/order_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/custom_error.dart';
import '../../data/models/order_user_dto/order_user_data.dart';
import '../../data/models/order_user_dto/product_detail.dart';
import '../../domain/entities/order_user_entity.dart';

part 'order_provider.g.dart';

@Riverpod(keepAlive: true)
class OrderService extends _$OrderService {
  @override
  FutureOr<OrderUserEntity?> build() async {
    return getOrders();
  }

  List<ProductDetail> _productDetails = [];
  List<ProductDetail> getProductDetails() => _productDetails;
  setProductDetail(List<ProductDetail> data) {
    _productDetails = List.from(data);
    state = AsyncData(_orderUserEntity);
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
  Future updateOrders({OrderUserData? body}) async {
    state = const AsyncLoading();
    final orderService = ref.watch(orderRepositoryProvider.notifier);

    try {
      final statusCode = await orderService.updateOrders(body: body);
      if (statusCode == 200) {
        await getOrders();
      }
      state = AsyncData(_orderUserEntity);
      return statusCode;
    } catch (e, stack) {
      throw CustomError('Failed to update orders', err: e, stackTrace: stack);
    }
  }

    incrementQuantity(int index) {
    final quantity = (_productDetails[index].quantity?.toInt() ?? 0) + 1;
     _productDetails[index] = _productDetails[index].copyWith(quantity: quantity );
    state = AsyncValue.data(_orderUserEntity);
  }

   decrementQuantity(int index) {
    final quantity = (_productDetails[index].quantity?.toInt() ?? 0) - 1;
     _productDetails[index] = _productDetails[index].copyWith(quantity: quantity );

    state = AsyncData(_orderUserEntity);
  }

}
