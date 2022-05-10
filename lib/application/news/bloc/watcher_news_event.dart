part of 'watcher_news_bloc.dart';

@freezed
class WatcherNewsEvent with _$WatcherNewsEvent {
  const factory WatcherNewsEvent.watchNewsStarted() = _WatchNewsStarted;
  const factory WatcherNewsEvent.newsReceived(Either<NewsFailure, KtList<Post>> failuresOrNews) = _NewsReceived;
}
