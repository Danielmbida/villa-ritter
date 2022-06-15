import 'dart:async';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/users/i_user_repository.dart';
import 'package:apptest/domain/users/user_failure.dart';
import 'package:apptest/domain/villa_force/force.dart';
import 'package:apptest/domain/villa_force/force_hour_failure.dart';
import 'package:apptest/domain/villa_force/i_force_hour.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
part 'watch_force_hour_event.dart';
part 'watch_force_hour_state.dart';
part 'watch_force_hour_bloc.freezed.dart';

@injectable
class WatchForceHourBloc
    extends Bloc<WatchForceHourEvent, WatchForceHourState> {
  final IForceHourRepository _forceHourRepository;
  WatchForceHourBloc(this._forceHourRepository) : super(const _Initial()) {
    StreamSubscription<Either<ForceHourFailure, KtList<Force>>>?
        _forceHourStreamSubscription;
    on<_WatchForceHourStarted>((event, emit) async {
      emit(const WatchForceHourState.loadInProgress());
      await _forceHourStreamSubscription?.cancel();
      _forceHourStreamSubscription = _forceHourRepository.watch().listen(
            (failureOrHour) => add(
              WatchForceHourEvent.hourReceived(failureOrHour),
            ),
          );
    });
    on<_HourReceived>((event, emit) {
      emit(
        event.failureOrHour.fold(
          (f) => WatchForceHourState.loadFailure(f),
          (users) => WatchForceHourState.loadSuccess(users),
        ),
      );
    });
  }
}
