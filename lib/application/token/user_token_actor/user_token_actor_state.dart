part of 'user_token_actor_bloc.dart';

@freezed
class UserTokenActorState with _$UserTokenActorState {
  const factory UserTokenActorState.initial() = _Initial;
  const factory UserTokenActorState.updateSuccess() = _UpdateSuccess;
  const factory UserTokenActorState.updateFailure(TokenFailure tokenFailure) = _UpdateFailure;
}
