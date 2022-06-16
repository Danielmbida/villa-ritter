import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/token/i_token_repository.dart';
import 'package:apptest/domain/token/token.dart';
import 'package:apptest/domain/token/token_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'user_token_actor_event.dart';
part 'user_token_actor_state.dart';
part 'user_token_actor_bloc.freezed.dart';

@injectable
class UserTokenActorBloc
    extends Bloc<UserTokenActorEvent, UserTokenActorState> {
  final ITokenRepository _tokenRepository;
  UserTokenActorBloc(this._tokenRepository) : super(const _Initial()) {
    on<_Create>((event, emit) async {
      final possibleFailure = await _tokenRepository.add(event.token);
      emit(
        possibleFailure.fold(
          (f) => UserTokenActorState.updateFailure(f),
          (_) => const UserTokenActorState.updateSuccess(),
        ),
      );
    });
    on<_Delete>((event, emit) async {
      final possibleFailure = await _tokenRepository.delete(event.user);
      emit(
        possibleFailure.fold(
          (f) => UserTokenActorState.updateFailure(f),
          (_) => const UserTokenActorState.updateSuccess(),
        ),
      );
    });
  }
}
