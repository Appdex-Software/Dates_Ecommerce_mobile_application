import 'package:dio/dio.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../models/news_dto/news_dto.dart';

abstract class NewsSource {
  Future<NewsDto> getNews();
}

class NewsSourceImpl implements NewsSource {
  @override
  Future<NewsDto> getNews() async {
    try {
      final response = await DioClient().dio.get(
            options: Options(
            validateStatus: (status) {
              return status! < 500;
            },
            followRedirects: false,
            ),
            AppConstants.getNewsUrl,
          );
      logger.d('getNews response: ${response.data}');
      if (response.statusCode == 200) {
        return NewsDto.fromJson(response.data);
      } else {
        throw CustomError(response.statusMessage ?? 'Error in news');
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
