import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HoursData {
  final BuildContext context;
  HoursData({
    required this.context,
  });
  static const List<String> firstHours = <String>[
    "Fermée",
    "14:00-18:00",
    "14:00-18:00",
    "Fermée",
    "14:00-18:00",
  ];
  static const List<String> secondHours = <String>[
    "Fermée",
    "19:30-23:00",
    "19:30-23:00",
    "19:30-23:00",
    "19:30-00:00",
  ];
  static List<String> days = <String>[
    "Lundi",
    "Mardi",
    "Mercredi",
    "Jeudi",
    "Vendredi",
  ];
}
