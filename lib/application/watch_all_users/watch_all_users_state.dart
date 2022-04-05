part of 'watch_all_users_bloc.dart';

@freezed
class WatchAllUsersState with _$WatchAllUsersState {
  const factory WatchAllUsersState.initial() = _Initial;
   const factory WatchAllUsersState.loadInProgress() = _LoadInProgress;
  const factory WatchAllUsersState.loadFailure(UserFailure rideFailure) =
      _LoadFailure;
  const factory WatchAllUsersState.loadSuccess(KtList<User> users) =
      _LoadSuccess;
}
