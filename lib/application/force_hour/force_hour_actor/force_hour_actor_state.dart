part of 'force_hour_actor_bloc.dart';

@freezed
class ForceHourActorState with _$ForceHourActorState {
  const factory ForceHourActorState.initial() = _Initial;
  const factory ForceHourActorState.updatedFailure(ForceHourFailure f) = _UpdatedFailure;
  const factory ForceHourActorState.actionInProgress() = ActionInProgress;
  const factory ForceHourActorState.openByAdmin() = _OpenByAdmin;
  const factory ForceHourActorState.closeByAdmin() = _CloseByAdmin;
}
