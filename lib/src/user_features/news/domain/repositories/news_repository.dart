import 'package:date_farm/src/user_features/news/data/repository_impl/news_repository_impl.dart';
import 'package:date_farm/src/user_features/news/domain/entities/news_entity.dart';

import '../../../../core/errors/custom_error.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_repository.g.dart';

@Riverpod(keepAlive: true)
class NewsRepository extends _$NewsRepository {
  @override
  FutureOr<NewsEntity?> build() async {
    return getNewsEntity();
  }

  final NewsRepositoryImpl newsSourceImpl = NewsRepositoryImpl();

  NewsEntity? _newsEntity;
  NewsEntity? getNewsEntity() => _newsEntity;

  Future<NewsEntity?> getNews() async {
    try {
      _newsEntity =
          await newsSourceImpl.getNews();
      return _newsEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get news', err: e, stackTrace: stack);
    }
  }
}
