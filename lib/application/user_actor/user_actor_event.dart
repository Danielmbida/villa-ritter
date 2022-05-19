part of 'user_actor_bloc.dart';

@freezed
class UserActorEvent with _$UserActorEvent {
  const factory UserActorEvent.present(User user) = _Present;
  const factory UserActorEvent.left(User user) = _Left;
}
