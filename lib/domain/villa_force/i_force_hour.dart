import 'package:apptest/domain/villa_force/force.dart';
import 'package:apptest/domain/villa_force/force_hour_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:kt_dart/collection.dart';

abstract class IForceHourRepository{
   Stream<Either<ForceHourFailure, KtList<Force>>> watch();
   Future<Either<ForceHourFailure, Unit>> update(Force forceHour);
}
