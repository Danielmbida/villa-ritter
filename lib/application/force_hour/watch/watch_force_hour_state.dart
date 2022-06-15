part of 'watch_force_hour_bloc.dart';

@freezed
class WatchForceHourState with _$WatchForceHourState {
  const factory WatchForceHourState.initial() = _Initial;
   const factory WatchForceHourState.loadInProgress() = _LoadInProgress;
  const factory WatchForceHourState.loadFailure(ForceHourFailure rideFailure) =
      _LoadFailure;
  const factory WatchForceHourState.loadSuccess(KtList<Force> hours) =
      _LoadSuccess;
}
