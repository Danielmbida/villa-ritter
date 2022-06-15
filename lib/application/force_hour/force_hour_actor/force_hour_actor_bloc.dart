// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/domain/villa_force/force.dart';
import 'package:apptest/domain/villa_force/force_hour_failure.dart';
import 'package:apptest/domain/villa_force/i_force_hour.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'force_hour_actor_event.dart';
part 'force_hour_actor_state.dart';
part 'force_hour_actor_bloc.freezed.dart';

class ForceHourActorBloc
    extends Bloc<ForceHourActorEvent, ForceHourActorState> {
  final IForceHourRepository _forceHourRepository;
  ForceHourActorBloc(this._forceHourRepository)
      : super(const ForceHourActorState.initial()) {
    on<_CloseVilla>((event, emit) async {
      final possibleFailure =
          await _forceHourRepository.update(event.isForceClosed);
      emit(
        possibleFailure.fold(
          (f) => ForceHourActorState.updatedFailure(f),
          (_) => const ForceHourActorState.closeByAdmin(),
        ),
      );
    });

    on<_OpenVilla>((event, emit) async {
      final possibleFailure =
          await _forceHourRepository.update(event.isForceOpened);
      emit(
        possibleFailure.fold(
          (f) => ForceHourActorState.updatedFailure(f),
          (_) => const ForceHourActorState.openByAdmin(),
        ),
      );
    });
  }
}
