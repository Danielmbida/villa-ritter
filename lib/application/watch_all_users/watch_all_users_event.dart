part of 'watch_all_users_bloc.dart';

// @freezed
// class WatchAllUsersEvent with _$WatchAllUsersEvent {
//   const factory WatchAllUsersEvent.started() = _Started;
// }

@freezed
class WatchAllUsersEvent with _$WatchAllUsersEvent {
  const factory WatchAllUsersEvent.watchAllUsersStarted() = _WatchAllUsersStarted;
  const factory WatchAllUsersEvent.usersReceived(
    Either<UserFailure, KtList<User>> failureOrUsers,
  ) = _UsersReceived;
}
