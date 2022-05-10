import 'package:apptest/domain/scan/value_object.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'scan_bloc.freezed.dart';
part 'scan_event.dart';
part 'scan_state.dart';

@injectable
class ScanBloc extends Bloc<ScanEvent, ScanState> {
  ScanBloc() : super(const ScanState.initial()) {
    on<_ScanCheckRequested>((event, emit) {
      final codeQR = CodeQR(event.codeQR).value;
      emit(
        codeQR.fold((f) => const ScanState.scanFail(), (data) {
          return ScanState.sucess(event.codeQR);
        }),
      );
    });

    on<_ScanDisplaErrorRequested>((event, emit) {
      emit(const ScanState.scanTimeout());
    });
    on<_ScanResetted>((event, emit) {
      emit(const ScanState.initial());
    });
  }
}
