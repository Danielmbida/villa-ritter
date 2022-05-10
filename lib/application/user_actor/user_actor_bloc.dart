import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/users/i_user_repository.dart';
import 'package:apptest/domain/users/user_failure.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_actor_event.dart';
part 'user_actor_state.dart';
part 'user_actor_bloc.freezed.dart';

@injectable
class UserActorBloc extends Bloc<UserActorEvent, UserActorState> {
  final IUserRepository _userRepository;
  UserActorBloc(this._userRepository) : super(const UserActorState.initial()) {
    on<_Present>((event, emit) async {
      final possibleFailure = await _userRepository.update(event.user);
      emit(
        possibleFailure.fold(
          (f) => UserActorState.updatedFailure(f),
          (_) => const UserActorState.updatedSuccess(),
        ),
      );
    });
    on<_Left>((event, emit) async {
      final possibleFailure = await _userRepository.update(event.user);
      emit(
        possibleFailure.fold(
          (f) => UserActorState.updatedFailure(f),
          (_) => const UserActorState.isLeft(),
        ),
      );
    });
  }
}
