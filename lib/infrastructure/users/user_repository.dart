import 'package:apptest/domain/auth/i_auth_facade.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/core/error.dart';
import 'package:apptest/domain/users/i_user_repository.dart';
import 'package:apptest/domain/users/user_failure.dart';
import 'package:apptest/infrastructure/users/user_dto.dart';
import 'package:apptest/injection.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

@LazySingleton(as: IUserRepository)
class UserRepository implements IUserRepository {
  final FirebaseFirestore _firestore;

  UserRepository(this._firestore);

  @override
  Stream<Either<UserFailure, KtList<User>>> watchAllUsersPresent() async* {
    yield* _firestore
        .collection('users')
        .where('present', isEqualTo: true)
        .snapshots()
        .map(
          (snapshot) => right<UserFailure, KtList<User>>(
            snapshot.docs
                .map((doc) => UserDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        );
  }

  @override
  Stream<Either<UserFailure, KtList<User>>> watchAllUsers() async* {
    yield* _firestore
        .collection('users')
        .snapshots()
        .map(
          (snapshot) => right<UserFailure, KtList<User>>(
            snapshot.docs
                .map((doc) => UserDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        );
  }

  @override
  Stream<Either<UserFailure, KtList<User>>> watchMine() async* {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    yield* _firestore
        .collection('users')
        .where('present', isEqualTo: true)
        .where('nom', isEqualTo: user.name)
        .snapshots()
        .map(
          (snapshot) => right<UserFailure, KtList<User>>(
            snapshot.docs
                .map((doc) => UserDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        );
  }

  @override
  Future<Either<UserFailure, Unit>> delete(User user) async {
    try {
      final rideDto = UserDto.fromDomain(user);

      await _firestore.collection('users').doc(rideDto.id).delete();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<UserFailure, Unit>> update(User user) async {
    try {
      final rideDto = UserDto.fromDomain(user);

      await _firestore
          .collection('users')
          .doc(rideDto.id)
          .set(rideDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION DENIED')) {
        return left(const UserFailure.insufficientPermission());
      } else {
        return left(const UserFailure.unexpected());
      }
    }
  }
}
