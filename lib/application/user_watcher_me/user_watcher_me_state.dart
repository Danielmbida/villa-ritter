part of 'user_watcher_me_bloc.dart';

@freezed
class UserWatcherMeState with _$UserWatcherMeState {
  const factory UserWatcherMeState.initial() = _Initial;
  const factory UserWatcherMeState.loadInProgress() = _LoadInProgress;
  const factory UserWatcherMeState.loadFailure(UserFailure rideFailure) =
      _LoadFailure;
  const factory UserWatcherMeState.loadSuccess(KtList<User> users) =
      _LoadSuccess;
}
