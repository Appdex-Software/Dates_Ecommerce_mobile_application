
import 'package:date_farm/src/user_features/news/data/models/add_news_body/add_news_body.dart';
import 'package:dio/dio.dart';

import '../../../../core/api/apis.dart';
import '../../../../core/constants/constants.dart';
import '../../../../core/errors/custom_error.dart';
import '../models/news_dto/news_dto.dart';

abstract class NewsSource {
  Future<NewsDto> getNews();
  Future<int?> addNews({AddNewsBody? body});
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
        return NewsDto.fromJson(response.data);
      }
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
  @override
  Future<int?> addNews({AddNewsBody? body}) async {
    try {
      final response = await DioClient().dio.post(
            options: Options(
              validateStatus: (status) {
                return status! < 500;
              },
              followRedirects: false,
            ),
            AppConstants.postNewsUrl,
            data: FormData.fromMap({
              'image' : body?.image !=null  ? await MultipartFile.fromFile(body?.image ?? '') : null,
              'subject': body?.subject,
              'body': body?.body,
            })
          );
      logger.d('getNews response: ${response.data}');
      return response.statusCode;
    } on CustomError catch (e) {
      throw e.errMassage;
    }
  }
}
