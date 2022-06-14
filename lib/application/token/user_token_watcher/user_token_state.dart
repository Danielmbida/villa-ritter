part of 'user_token_bloc.dart';

@freezed
class UserTokenState with _$UserTokenState {
  const factory UserTokenState.initial() = _Initial;
  const factory UserTokenState.loadSucess(KtList<Token> tokens) = _LoadSucces;
  const factory UserTokenState.loadInProgress() = _LoadInProgress;
  const factory UserTokenState.loadInFailure(TokenFailure tokenFailure) = _LoadInFailure;
}
