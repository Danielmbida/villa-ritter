part of 'user_token_actor_bloc.dart';

@freezed
class UserTokenActorState with _$UserTokenActorState {
  const factory UserTokenActorState.initial() = _Initial;
  const factory UserTokenActorState.createSuccess() = _CreateSuccess;
  const factory UserTokenActorState.createFailure(TokenFailure tokenFailure) = _CreateFailure;
}
