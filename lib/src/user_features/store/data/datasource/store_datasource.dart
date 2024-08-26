import 'package:date_farm/src/user_features/store/data/models/create_order_body/create_order_body.dart';
import 'package:date_farm/src/user_features/store/data/models/create_order_response_dto/create_order_response_dto.dart';
import 'package:date_farm/src/user_features/store/data/models/date_product_dto/date_product_dto.dart';
import 'package:dio/dio.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';

abstract class StoreSource {
  Future<DateProductDto> getProducts();
  Future<CreateOrderResponseDto> createOrder({CreateOrderBody? order});
}

class StoreSourceImpl implements StoreSource {
  @override
  Future<DateProductDto> getProducts() async {
    try {
      final response = await DioClient().dio.get(
            options: Options(
              validateStatus: (status) {
                return status! < 500;
              },
              followRedirects: false,
            ),
            AppConstants.getProductUrl,
          );
      logger.d('getProducts response: ${response.data}');
      if (response.statusCode == 200) {
        return DateProductDto.fromJson(response.data);
      } else {
        return DateProductDto.fromJson(response.data);
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<CreateOrderResponseDto> createOrder({CreateOrderBody? order}) async {
    try {
      final response = await DioClient().dio.post(
            options: Options(
              validateStatus: (status) {
                return status! < 500;
              },
              followRedirects: false,
            ),
            data: order?.toJson(),
            AppConstants.createOrderUrl,
          );
      logger.d('createOrder response: ${response.data}');
      if (response.statusCode == 200) {
        return CreateOrderResponseDto.fromJson(response.data);
      } else {
        return CreateOrderResponseDto.fromJson(response.data);
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
