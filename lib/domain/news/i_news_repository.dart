import 'package:apptest/domain/news/news_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:wordpress_api/wordpress_api.dart';

abstract class INewsRepository{
  Future<Either<NewsFailure, KtList<Post>>> watchAllNews();
}
