import 'package:dio/dio.dart';

import '../constants/constants.dart';
import 'apis.dart';

class ExsysDioClient {
  ExsysDioClient()
      : dio = Dio(
          BaseOptions(
            baseUrl: AppConstants.apiBaseUrl,
            responseType: ResponseType.json,
            receiveDataWhenStatusError: true,
            headers: {
              'Accept': 'application/json*',
            },
            contentType: 'application/json',
          ),
        )..interceptors.addAll([
            AuthorizationInterceptor(),
            LoggerInterceptor(),
            // LocaleInterceptor(),
          ]);
  late final Dio dio;
}
