part of 'user_token_actor_bloc.dart';

@freezed
class UserTokenActorEvent with _$UserTokenActorEvent {
  const factory UserTokenActorEvent.create(Token token) = _Create;
  const factory UserTokenActorEvent.delete(User user) = _Delete;
}
