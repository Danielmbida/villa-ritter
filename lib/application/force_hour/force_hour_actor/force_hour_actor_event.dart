part of 'force_hour_actor_bloc.dart';

@freezed
class ForceHourActorEvent with _$ForceHourActorEvent {
  const factory ForceHourActorEvent.closeVilla(Force isForceClosed) = _CloseVilla;
  const factory ForceHourActorEvent.openVilla(Force isForceOpened) = _OpenVilla;
  const factory ForceHourActorEvent.defaultHour(Force isForceOpened) = _DefaultHour;
}
