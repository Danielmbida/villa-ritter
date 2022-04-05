part of 'user_actor_bloc.dart';

@freezed
class UserActorState with _$UserActorState {
  const factory UserActorState.initial() = _Initial;
  const factory UserActorState.updatedSuccess() = _UpdatedSuccess;
  const factory UserActorState.updatedFailure(UserFailure f) = _UpdatedFailure;
  const factory UserActorState.actionInProgress() = ActionInProgress;
  const factory UserActorState.isLeft() = IsLeft;
}
