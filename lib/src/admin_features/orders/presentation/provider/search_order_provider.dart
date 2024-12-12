


import 'package:date_farm/src/user_features/order/presentation/providers/order_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/custom_error.dart';
import '../../../../user_features/order/data/models/order_user_dto/order_user_data.dart';

part 'search_order_provider.g.dart';

@Riverpod(keepAlive: true)
class SearchOrderService extends _$SearchOrderService {
  @override
  FutureOr<List<OrderUserData>?> build() async {
    return ref.watch(orderServiceProvider.notifier).getOrderUserEntity()?.data;
  }



  Future<List<OrderUserData>?> searchOrders(List<String> valueList) async {
    state = const AsyncLoading();
    final orderData = ref.watch(orderServiceProvider.notifier).getOrderUserEntity()?.data;

    try {
      List<OrderUserData>? result;
      if(valueList.isEmpty ) {
        result = orderData ?? [];
      }
      for (var elementList in valueList) {
         result = List.from(result ?? [])..addAll(orderData?.where((element) =>  element.status?.toLowerCase() == elementList.toLowerCase(),).toList() ?? []);
      }
      
      state = AsyncData(result);

      return result;
    } catch (e, stack) {
      throw CustomError('Failed to search orders', err: e, stackTrace: stack);
    }
  }

  
}
