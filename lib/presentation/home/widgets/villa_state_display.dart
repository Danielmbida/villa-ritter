// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class VillaStateDisplay extends StatefulWidget {
  const VillaStateDisplay({
    Key? key,
  }) : super(key: key);

  @override
  State<VillaStateDisplay> createState() => _VillaStateDisplayState();
}

class _VillaStateDisplayState extends State<VillaStateDisplay> {
  final bool villaState = false;
  @override
  void initState() {
    _checkVillaHours();
    // print(_checkVillaHours());
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    _checkVillaHours();
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.035,
      left: MediaQuery.of(context).size.width * 0.015,
      child: CircularText(
        children: [
          TextItem(
            text: Text(
              AppLocalizations.of(context)!.villa_is_string.toUpperCase(),
              style: const TextStyle(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            space: 12,
            startAngle: -90,
            startAngleAlignment: StartAngleAlignment.center,
          ),
          TextItem(
            text: Text(
              _checkVillaHours() == true
                  ? AppLocalizations.of(context)!
                      .villa_open_string
                      .toUpperCase()
                  : AppLocalizations.of(context)!
                      .villa_close_string
                      .toUpperCase(),
              style: TextStyle(
                fontSize: 15,
                color:
                    _checkVillaHours() ? Colors.amberAccent : Colors.redAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            space: 20,
            startAngle: 90,
            startAngleAlignment: StartAngleAlignment.center,
            direction: CircularTextDirection.anticlockwise,
          ),
        ],
        radius: 50,
        backgroundPaint: Paint()..color = Theme.of(context).primaryColor,
      ),
    );
  }

  bool _checkVillaHours() {
    final int day = DateTime.now().weekday;
    final DateTime now = DateTime.now();
    final int year = DateTime.now().year;
    final String month = DateFormat('MM').format(DateTime.now());
    final String day1 = DateFormat('dd').format(DateTime.now());
    final DateTime ouverturApresMidi =
        DateTime.parse("$year-$month-$day1 13:59");
    final DateTime fermetureApresMidi =
        DateTime.parse("$year-$month-$day1 18:00");
    final DateTime ouverturSoir = DateTime.parse("$year-$month-$day1 19:29");
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
        if (now.isAfter(ouverturSoir) && now.isBefore(fermetureSoir)) {
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
}
