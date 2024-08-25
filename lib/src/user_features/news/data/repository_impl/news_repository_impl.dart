
import 'package:date_farm/src/user_features/news/data/models/news_dto/news_dto.dart';
import 'package:date_farm/src/user_features/news/domain/entities/news_entity.dart';

import '../../../../core/errors/custom_error.dart';
import '../datasource/news_datasource.dart';

abstract class BaseNewsRepository {
  Future<NewsEntity> getNews();
}

class NewsRepositoryImpl implements BaseNewsRepository {
  final NewsSourceImpl dataSource = NewsSourceImpl();

  @override
  Future<NewsEntity> getNews() async {
    try {
      return await dataSource
          .getNews()
          .then((value) {
        return value.toEntity();
      });
    } catch (e, stack) {
      throw CustomError('Failed to news', err: e, stackTrace: stack);
    }
  }

}
