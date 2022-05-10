import 'package:apptest/domain/news/i_news_repository.dart';
import 'package:apptest/domain/news/news_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:wordpress_api/wordpress_api.dart';

@LazySingleton(as: INewsRepository)
class Newsrepository implements INewsRepository {
  @override
  Future<Either<NewsFailure, KtList<Post>>> watchAllNews() async {
    try {
      final api = WordPressAPI('https://www.villa-ritter.ch/');
      final res = await api.posts.fetch();
      final List<Post> news = [];

      for (final post in res.data as List<Post>) {
        news.add(post);
      }

      return right(news.toImmutableList());
    } on FormatException catch (e) {
      if (e.message.contains('PERMISSION DENIED')) {
        return left(const NewsFailure.insufficientPermission());
      } else {
        return left(const NewsFailure.unexpected());
      }
    }
  }
}
