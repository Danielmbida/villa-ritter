// ignore_for_file: require_trailing_commas
import 'package:apptest/domain/auth/auth_failure.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/auth/value_objects.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();

  Future<void> signOut();

  Future<Either<AuthFailure, Unit>> resetPasswordWithEmail(
      {required EmailAddress emailAddress});

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> unRegister();

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPasswordPressed(
      {required EmailAddress emailAddress,
      required Password password,
      required LastName name,
      required Locality locality,
      required Gender gender,
      required BirthDate birthDate,
      required bool present,
      required String hour});
}
