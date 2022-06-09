part of 'user_watcher_me_bloc.dart';

@freezed
class UserWatcherMeEvent with _$UserWatcherMeEvent {
  const factory UserWatcherMeEvent.watcherMeStarted() = _WatcherMeStarted;
  const factory UserWatcherMeEvent.userReceived(
    Either<UserFailure, KtList<User>> failureOrUsers,
  ) = _UsersReceived;
}
