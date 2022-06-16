import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/token/token.dart';
import 'package:apptest/domain/token/token_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class ITokenRepository {
  Stream<Either<TokenFailure, KtList<Token>>> watchAllTokens();
    Future<Either<TokenFailure, Unit>> add(Token token);
    Future<Either<TokenFailure, Unit>> delete(User user);
}
