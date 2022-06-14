part of 'user_token_bloc.dart';

@freezed
class UserTokenEvent with _$UserTokenEvent {
  const factory UserTokenEvent.watcherTokenstarted() = _WatcherTokenstarted;
  const factory UserTokenEvent.tokenReceived(Either<TokenFailure, KtList<Token>> failureOrToken,) = _TokenReceived;

}
