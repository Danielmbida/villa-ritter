// ignore_for_file: depend_on_referenced_packages

import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
part 'horaire_cubit.freezed.dart';
part 'horaire_state.dart';

@injectable
class HoraireCubit extends Cubit<HoraireState> {
  late StreamSubscription hourStream;
  HoraireCubit() : super(const HoraireState.ferme()) {
    hourStream = Stream.periodic(const Duration(seconds: 1), (_) => DateTime.now())
        .listen((_) {
      if (_checkVillaHours()) {
        emitOuvert();
      } else {
        emitFerme();
      }
    });
  }

  void dispose() {
    hourStream.cancel();
  }

  bool _checkVillaHours() {
    final int day = DateTime.now().weekday;
    final DateTime now = DateTime.now();
    final int year = DateTime.now().year;
    final String month = DateFormat('MM').format(DateTime.now());
    final String day1 = DateFormat('dd').format(DateTime.now());
    final DateTime ouverturApresMidi =
        DateTime.parse("$year-$month-$day1 14:00");
    final DateTime fermetureApresMidi =
        DateTime.parse("$year-$month-$day1 18:00");
    final DateTime ouverturSoir = DateTime.parse("$year-$month-$day1 19:30");
    final DateTime fermetureSoir = DateTime.parse("$year-$month-$day1 23:00");
    final DateTime fermetureVendredi =
        DateTime.parse("$year-$month-$day1 00:00");
    // final now = DateTime.parse("$year-$month-$day1 23:00"); ///--> for test

    switch (day) {
      case 1:
        return false;
      case 2:
        if ((now.isAfter(ouverturApresMidi) &&
                now.isBefore(fermetureApresMidi)) ||
            (now.isAfter(ouverturSoir) && now.isBefore(fermetureSoir))) {
          return true;
        }
        return false;
      case 3:
        if ((now.isAfter(ouverturApresMidi) &&
                now.isBefore(fermetureApresMidi)) ||
            (now.isAfter(ouverturSoir) && now.isBefore(fermetureSoir))) {
          return true;
        }
        break;
      case 4:
        if (now.isAfter(ouverturApresMidi) && now.isBefore(fermetureSoir)) {
          return true;
        }
        break;
      case 5:
        if ((now.isAfter(ouverturApresMidi) &&
                now.isBefore(fermetureApresMidi)) ||
            (now.isAfter(ouverturSoir) && now.isBefore(fermetureVendredi))) {
          return true;
        }
        break;
      case 6:
        return false;
      case 7:
        return false;
    }
    return false;
  }

  void emitOuvert() => emit(const HoraireState.ouvert());
  void emitFerme() => emit(const HoraireState.ferme());
}
