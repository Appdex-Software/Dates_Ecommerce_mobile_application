import 'package:date_farm/src/user_features/news/domain/entities/news_entity.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/errors/custom_error.dart';
import '../../domain/repositories/news_repository.dart';

part 'news_provider.g.dart';

@Riverpod(keepAlive: true)
class NewsService extends _$NewsService {
  @override
  FutureOr<NewsEntity?> build() async {
    return getNews();
  }

  NewsEntity? _newsEntity;
  NewsEntity? getNewsEntity() => _newsEntity;

  Future<NewsEntity?> getNews() async {
    final newsService = ref.watch(newsRepositoryProvider.notifier);

    try {
      _newsEntity = await newsService.getNews();
      return _newsEntity;
    } catch (e, stack) {
      throw CustomError('Failed to get news', err: e, stackTrace: stack);
    }
  }
}