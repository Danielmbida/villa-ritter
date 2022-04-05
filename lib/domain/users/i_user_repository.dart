import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/users/user_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';

abstract class IUserRepository{
   Stream<Either<UserFailure, KtList<User>>> watchAllUsersPresent();
   Stream<Either<UserFailure, KtList<User>>> watchMine();
   Stream<Either<UserFailure, KtList<User>>> watchAllUsers();
   Future<Either<UserFailure, Unit>> update(User user);
   Future<Either<UserFailure, Unit>> delete(User user);
}
