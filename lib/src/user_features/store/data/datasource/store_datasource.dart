import 'package:date_farm/src/user_features/store/data/models/date_product_dto/date_product_dto.dart';
import 'package:dio/dio.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';

abstract class StoreSource {
  Future<DateProductDto> getProducts({String? accessToken});
}

class StoreSourceImpl implements StoreSource {
  @override
  Future<DateProductDto> getProducts({String? accessToken}) async {
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
        throw CustomError(response.statusMessage ?? 'Error in products');
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
