import 'package:apptest/domain/auth/auth_failure.dart';
import 'package:apptest/domain/auth/i_auth_facade.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/auth/value_objects.dart';
import 'package:apptest/infrastructure/auth/firebase_user_mapper.dart'
    as firebase_user_domain_x;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  FirebaseAuthFacade(this._firebaseAuth);

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    //Eviter le crash de l'application en cas de mauvaise donnée email et password
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidNameAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> resetPasswordWithEmail({
    required EmailAddress emailAddress,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: emailAddressStr);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-email') {
        return left(const AuthFailure.invalidNameAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> unRegister() async {
    try {
      await _firebaseAuth.currentUser!.delete();
      await FirebaseFirestore.instance
          .collection('users')
          .doc(_firebaseAuth.currentUser!.uid)
          .delete();
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-email') {
        return left(const AuthFailure.invalidNameAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Option<User>> getSignedInUser() async {
    final user = await _firebaseAuth.currentUser?.toDomain();
    return optionOf(user);
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPasswordPressed({
    required EmailAddress emailAddress,
    required Password password,
    required LastName name,
    required Locality locality,
    required Gender gender,
    required BirthDate birthDate,
    required bool present,
    required String hour,
  }) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();
    final nameStr = name.getOrCrash();
    final localityStr = locality.getOrCrash();
    final genderStr = gender.getOrCrash();
    final birthDateStr = birthDate.getOrCrash();
    final hourStr = DateFormat('HH:mm').format(DateTime.now());
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );

      final authResult = await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr.trim(),
        password: passwordStr,
      );

      await FirebaseFirestore.instance
          .collection('users')
          .doc(authResult.user?.uid)
          .set(
        {
          'nom': nameStr.trim(),
          'email': emailAddressStr.trim(),
          'localite': localityStr.trim(),
          'naissance': birthDateStr.trim(),
          'genre': genderStr.trim(),
          'present': present,
          'arrive': hourStr.trim(),
        },
      );
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        return left(const AuthFailure.invalidNameAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }
}
