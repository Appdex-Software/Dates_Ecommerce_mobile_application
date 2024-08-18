import 'package:dio/dio.dart';

import '../constants/constants.dart';
import 'apis.dart';

class DioClient {
  DioClient()
      : dio = Dio(
          BaseOptions(
            baseUrl: AppConstants.apiBaseUrl,
            responseType: ResponseType.json,
            receiveDataWhenStatusError: true,
            headers: {
              'Accept': '*/*',
              'Connection-Type': 'mobile',
              "Accept-Encoding": "gzip, deflate, br",
            },
            contentType: 'application/json',
            validateStatus: (status) {
              return status! < 500;
            },
            followRedirects: false, // Enable following redirections
            maxRedirects: 5, //
          ),
        )..interceptors.addAll([
            AuthorizationInterceptor(),
            LoggerInterceptor(),
            // LocaleInterceptor(),
          ]);
  late final Dio dio;
}
