import 'package:apptest/domain/villa_force/force.dart';
import 'package:apptest/domain/villa_force/force_hour_failure.dart';
import 'package:apptest/domain/villa_force/i_force_hour.dart';
import 'package:apptest/infrastructure/villa_force/force_hour_dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';

@LazySingleton(as: IForceHourRepository)
class ForceHourRepository implements IForceHourRepository {
  final FirebaseFirestore _firestore;
  ForceHourRepository(this._firestore);

  @override
  Future<Either<ForceHourFailure, Unit>> update(Force forceHour) async {
    try {
      final forceHourDto = ForceHourDto.fromDomain(forceHour);
      await _firestore
          .collection("villa_force")
          .doc(forceHourDto.id)
          .set(forceHourDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION DENIED')) {
        return left(
          const ForceHourFailure.serverError(),
        );
      } else {
        return left(
          const ForceHourFailure.serverError(),
        );
      }
    }
  }

  @override
  Stream<Either<ForceHourFailure, KtList<Force>>> watch() async* {
    yield* _firestore.collection('villa_force').snapshots().map(
          (snapshot) => right<ForceHourFailure, KtList<Force>>(
            snapshot.docs
                .map((doc) => ForceHourDto.fromFirestore(doc).toDomain())
                .toImmutableList(),
          ),
        );
  }
}
