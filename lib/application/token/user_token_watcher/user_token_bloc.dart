import 'dart:async';

import 'package:apptest/domain/token/i_token_repository.dart';
import 'package:apptest/domain/token/token.dart';
import 'package:apptest/domain/token/token_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

part 'user_token_event.dart';
part 'user_token_state.dart';
part 'user_token_bloc.freezed.dart';

@injectable
class UserTokenBloc extends Bloc<UserTokenEvent, UserTokenState> {
  final ITokenRepository _tokenRepository;
  UserTokenBloc(this._tokenRepository) : super(const _Initial()) {
    StreamSubscription<Either<TokenFailure, KtList<Token>>>?
        _tokenStreamSubscription;
    on<_WatcherTokenstarted>((event, emit) async {
      emit(const UserTokenState.loadInProgress());
      await _tokenStreamSubscription?.cancel();
      _tokenStreamSubscription = _tokenRepository.watchAllTokens().listen(
            (failureOrToken) =>
                add(UserTokenEvent.tokenReceived(failureOrToken)),
          );
    });
    on<_TokenReceived>((event, emit) {
      emit(
        event.failureOrToken.fold(
          (f) => UserTokenState.loadInFailure(f),
          (token) => UserTokenState.loadSucess(token),
        ),
      );
    });
  }
}
