import 'package:date_farm/src/user_features/store/data/models/categories_dto/categories_dto.dart';
import 'package:date_farm/src/user_features/store/data/models/create_order_body/create_order_body.dart';
import 'package:date_farm/src/user_features/store/data/models/create_order_response_dto/create_order_response_dto.dart';
import 'package:date_farm/src/user_features/store/data/models/date_product_dto/date_product_dto.dart';
import 'package:dio/dio.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../models/date_product_dto/date_data.dart';

abstract class StoreSource {
  Future<DateProductDto> getProducts();
  Future<CategoriesDto> getCategories();
  Future<CreateOrderResponseDto> createOrder({CreateOrderBody? order});
  Future<int?> createProducts({DateData? data});
  Future<int?> patchProducts({DateData? data});
}

class StoreSourceImpl implements StoreSource {
  @override
  Future<CategoriesDto> getCategories() async {
    try {
      final response = await DioClient().dio.get(
            options: Options(
              validateStatus: (status) {
                return status! < 500;
              },
              followRedirects: false,
            ),
            AppConstants.getCategoriesUrl,
          );
      logger.d('getCategories response: ${response.data}');
      if (response.statusCode == 200) {
        return CategoriesDto.fromJson(response.data);
      } else {
        return CategoriesDto.fromJson(response.data);
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
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
  Future<int?> createProducts({DateData? data}) async {
    try {
      final response = await DioClient().dio.post(
          options: Options(
            validateStatus: (status) {
              return status! < 500;
            },
            followRedirects: false,
          ),
          AppConstants.getProductUrl,
          data: FormData.fromMap(data?.image != null
              ? <String, dynamic>{
                  'category': data?.category.toString(),
                  'families_quantity': data?.familiesQuantity.toString(),
                  'fasting_quantity': data?.fastingQuantity.toString(),
                  'charities_quantity': data?.charitiesQuantity.toString(),
                  'name': data?.name.toString(),
                  'image': await MultipartFile.fromFile(data?.image ?? ''),
                  'total_quantity': data?.totalQuantity.toString(),
                  'description': data?.description,
                }
              : <String, dynamic>{
                  'category': data?.category.toString(),
                  'families_quantity': data?.familiesQuantity.toString(),
                  'fasting_quantity': data?.fastingQuantity.toString(),
                  'charities_quantity': data?.charitiesQuantity.toString(),
                  'name': data?.name.toString(),
                  'total_quantity': data?.totalQuantity.toString(),
                  'description': data?.description,
                }));
      logger.d('getProducts response: ${response.data}');
      if (response.statusCode == 200) {
        return response.statusCode;
      } else {
        return response.statusCode;
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }

  @override
  Future<int?> patchProducts({DateData? data}) async {
    try {
      final response = await DioClient().dio.patch(
          options: Options(
            validateStatus: (status) {
              return status! < 500;
            },
            followRedirects: false,
          ),
          "${AppConstants.getProductUrl}/${data?.id.toString()}",
          data: FormData.fromMap(data?.image != null
              ? <String, dynamic>{
                  'category': data?.category.toString(),
                  'families_quantity': data?.familiesQuantity.toString(),
                  'fasting_quantity': data?.fastingQuantity.toString(),
                  'charities_quantity': data?.charitiesQuantity.toString(),
                  'name': data?.name.toString(),
                  'image': await MultipartFile.fromFile(data?.image ?? ''),
                  'total_quantity': data?.totalQuantity.toString(),
                  'description': data?.description,
                }
              : <String, dynamic>{
                  'category': data?.category.toString(),
                  'families_quantity': data?.familiesQuantity.toString(),
                  'fasting_quantity': data?.fastingQuantity.toString(),
                  'charities_quantity': data?.charitiesQuantity.toString(),
                  'name': data?.name.toString(),
                  'total_quantity': data?.totalQuantity.toString(),
                  'description': data?.description,
                }));
      logger.d('getProducts response: ${response.data}');
      if (response.statusCode == 200) {
        return response.statusCode;
      } else {
        return response.statusCode;
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
      if (response.statusCode == 201) {
        return CreateOrderResponseDto.fromJson(response.data);
      } else {
        return CreateOrderResponseDto.fromJson(response.data);
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
