import 'package:date_farm/src/user_features/order/data/models/order_user_dto/order_user_dto.dart';
import 'package:dio/dio.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../models/order_user_dto/order_user_data.dart';

abstract class OrderSouce {
  Future<OrderUserDto> getOrders({String? id});
  Future<int?> updateOrders({OrderUserData? body});
}

class OrderSouceImpl implements OrderSouce {
  @override
  Future<OrderUserDto> getOrders({String? id}) async {
    try {
      final response = await DioClient().dio.get(
            options: Options(
              validateStatus: (status) {
                return status! < 500;
              },
              followRedirects: false,
            ),
            "${AppConstants.getOrdersUrl}${id == null ? '' : "?user_id=$id"}",
          );
      logger.d('getOrdersresponse: ${response.data}');
      if (response.statusCode == 200) {
        return OrderUserDto.fromJson(response.data);
      } else {
        return OrderUserDto.fromJson(response.data);
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<int?> updateOrders({OrderUserData? body}) async {
    try {
      final response = await DioClient().dio.patch(
            data: body?.toJson(),
            options: Options(
              validateStatus: (status) {
                return status! < 500;
              },
              followRedirects: false,
            ),
            "${AppConstants.getOrdersUrl}/${body?.id}",
          );
      logger.d('patchOrdersresponse: ${response.data}');
      return response.statusCode;
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
