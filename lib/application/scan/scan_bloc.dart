import 'dart:async';

import 'package:apptest/domain/scan/value_object.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'scan_bloc.freezed.dart';
part 'scan_event.dart';
part 'scan_state.dart';

@injectable
class ScanBloc extends Bloc<ScanEvent, ScanState> {
  ScanBloc() : super(const ScanState.initial());

  @override
  Stream<ScanState> mapEventToState(ScanEvent event,) async* {
    yield* event.map(
      scanCheckRequested: (scanData) async*{
        final codeQR = CodeQR(scanData.codeQR).value;
        yield codeQR.fold((f) => const ScanState.scanFail(), (data){
          return ScanState.sucess(scanData.codeQR);
        });
      },
      scanDisplayErrorRequested: (_) async*{
        yield const ScanState.scanTimeout();
      },
      scanResetted: (_) async*{
        yield const ScanState.initial();
      },
      
      );
  }
}
