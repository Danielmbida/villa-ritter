part of 'watch_force_hour_bloc.dart';

@freezed
class WatchForceHourEvent with _$WatchForceHourEvent {
  const factory WatchForceHourEvent.watchForceHourStarted() = _WatchForceHourStarted;
  const factory WatchForceHourEvent.hourReceived(
    Either<ForceHourFailure, KtList<Force>> failureOrHour,
  ) = _HourReceived;
}
