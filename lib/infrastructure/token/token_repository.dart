import 'package:apptest/domain/token/i_token_repository.dart';
import 'package:apptest/domain/token/token.dart';
import 'package:apptest/domain/token/token_failure.dart';
import 'package:apptest/infrastructure/token/token_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: ITokenRepository)
class TokenRepository implements ITokenRepository {
  final FirebaseFirestore _firestore;
  TokenRepository(this._firestore);

  @override
  Stream<Either<TokenFailure, KtList<Token>>> watchAllTokens() async* {
    print("récup");
    yield* _firestore.collection('users_token').snapshots().map(
          (snapshot) => right<TokenFailure, KtList<Token>>(
            snapshot.docs
                .map((doc) => TokenDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        );
  }

  @override
  Future<Either<TokenFailure, Unit>> add(Token token) async {
    try {
      final tokenDto = TokenDto.fromDomain(token);

      await _firestore
          .collection("users_token")
          .doc(tokenDto.id)
          .set(tokenDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION DENIED')) {
        return left(
          const TokenFailure.serverError(),
        );
      } else {
        return left(
          const TokenFailure.serverError(),
        );
      }
    }
  }
}
