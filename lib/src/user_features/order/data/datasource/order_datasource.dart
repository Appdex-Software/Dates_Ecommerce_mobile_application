
import 'package:date_farm/src/user_features/order/data/models/order_pdf_model/order_pdf_model.dart';
import 'package:date_farm/src/user_features/order/data/models/order_user_dto/order_user_dto.dart';
import 'package:dio/dio.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';

abstract class OrderSouce {
  Future<OrderUserDto> getOrders({String? id,int page = 1});
  Future<int?> updateOrders({Map<dynamic,dynamic>? body});
  Future<String?> getPdfOrders({OrderPdfModel? body});
}

class OrderSouceImpl implements OrderSouce {
  @override
  Future<OrderUserDto> getOrders({String? id,int page = 1}) async {
    try {
      final response = await DioClient().dio.get(
            options: Options(
              validateStatus: (status) {
                return status! < 500;
              },
              followRedirects: false,
            ),
            "${AppConstants.getOrdersUrl}?page=$page${id == null ? '' : "&user_id=$id"}",
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
  Future<int?> updateOrders({Map<dynamic,dynamic>? body}) async {
    try {
      final response = await DioClient().dio.patch(
            data: body,
            options: Options(
              validateStatus: (status) {
                return status! < 500;
              },
              followRedirects: false,
            ),
            "${AppConstants.getOrdersUrl}/${body?["id"]}",
          );
      logger.d('patchOrdersresponse: ${response.data}');
      return response.statusCode;
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
 
  @override
  Future<String?> getPdfOrders({OrderPdfModel? body}) async {
    try {
      final response = await DioClient().dio.get(
            data: body,
            options: Options(
              validateStatus: (status) {
                return status! < 500;
              },
              followRedirects: false,
            ),
            "${AppConstants.getPdfOrdersUrl}?start_year=${body?.startYear}&start_month=${body?.startMonth}&end_year=${body?.endYear}&end_month=${body?.endMonth}&order_id=${body?.orderId ?? ''}&customer_type=${body?.customerType ?? ''}&customer_email=${body?.customerEmail ?? ''}",
          );
      logger.d('patchOrdersresponse: ${response.data}');
       if (response.statusCode == 200) {
        return response.data["file_path"];
      } else {
        return null;
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }


}
