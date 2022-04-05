import 'package:apptest/domain/auth/user.dart';
import 'package:dartz/dartz.dart';
import 'auth_failure.dart';
import 'value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();

  Future<void> signOut();

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });

  Future<Either<AuthFailure, Unit>> registerWithEmailAndPasswordPressed({
    required EmailAddress emailAddress,
    required Password password,
    required LastName name,
    required Locality locality,
    required Gender gender,
    required BirthDate birthDate,
    required bool present,
    required String hour
  });
}
