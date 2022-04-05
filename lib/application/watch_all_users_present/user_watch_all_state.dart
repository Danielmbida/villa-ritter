part of 'user_watch_all_bloc.dart';

@freezed
class UserWatchAllState with _$UserWatchAllState {
  const factory UserWatchAllState.initial() = _Initial;
  const factory UserWatchAllState.loadInProgress() = _LoadInProgress;
  const factory UserWatchAllState.loadFailure(UserFailure rideFailure) =
      _LoadFailure;
  const factory UserWatchAllState.loadSuccess(KtList<User> users) =
      _LoadSuccess;
}
