import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/users/i_user_repository.dart';
import 'package:apptest/domain/users/user_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_actor_event.dart';
part 'user_actor_state.dart';
part 'user_actor_bloc.freezed.dart';

@injectable
class UserActorBloc extends Bloc<UserActorEvent, UserActorState> {
  final IUserRepository _userRepository;
  // ScanBloc() : super(const ScanState.initial());

  UserActorBloc(this._userRepository) : super(const UserActorState.initial());
  // UserActorBloc() : super(const UserActorState.initial());

  @override
  Stream<UserActorState> mapEventToState(
    UserActorEvent event,
  ) async* {
    yield* event.map(
      present: (e) async* {
        final possibleFailure = await _userRepository.update(e.user);
        yield possibleFailure.fold(
          (f) => UserActorState.updatedFailure(f),
          (_) => const UserActorState.updatedSuccess(),
        );
      },
      left: (e) async* {
        final possibleFailure = await _userRepository.update(e.user);
        yield possibleFailure.fold(
          (f) => UserActorState.updatedFailure(f),
          (_) => const UserActorState.isLeft(),
        );
      },
    );
  }
}
