part of 'watcher_news_bloc.dart';

@freezed
class WatcherNewsState with _$WatcherNewsState {
  const factory WatcherNewsState.initial() = _Initial;
  const factory WatcherNewsState.loadInProgress() = _LoadInProgress;
  const factory WatcherNewsState.loadSuccess(KtList<Post> listPosts) = _LoadSuccess;
  const factory WatcherNewsState.loadFailure(NewsFailure newsFailure) = _LoadFailure;
}
