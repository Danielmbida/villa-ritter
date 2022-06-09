part of 'user_watch_all_bloc.dart';

@freezed
class UserWatchAllEvent with _$UserWatchAllEvent {
  const factory UserWatchAllEvent.watchAllStarted() = _WatchAllStarted;
  const factory UserWatchAllEvent.userReceived(
    Either<UserFailure, KtList<User>> failureOrUsers,
  ) = _UsersReceived;
}
