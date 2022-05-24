// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';

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
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.035,
      left: MediaQuery.of(context).size.width * 0.015,
      child: CircularText(
        children: [
          TextItem(
            text: Text(
              "la Villa est".toUpperCase(),
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
              _checkVillaHours() ? "Ouverte".toUpperCase() : "Fermée".toUpperCase(),
              style: TextStyle(
                fontSize: 15,
                color: _checkVillaHours() ? Colors.amberAccent : Colors.redAccent,
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
    final int hour = DateTime.now().hour;
    final int minute = DateTime.now().minute;
    switch (day) {
      case 1:
        return false;
      case 2:
        // if (hour < 14 || hour > 18 || hour > 23) return false;
        if ((hour > 14 && hour < 18) || (hour > 18 && hour < 23)) return true;
        break;
      case 3:
        // if (hour < 14 || hour > 18 || hour > 23) return false;
        if ((hour > 14 && hour < 18) || (hour > 18 && hour < 23)) return true;
        break;
      case 4:
        if ((hour > 19 && minute == 30) && hour < 23) return true;
        break;
      case 5:
        // if (hour < 14 || hour > 18 || hour > 23) return false;
        if ((hour > 14 && hour < 18) || (hour > 18 && hour < 23)) return true;
        break;
      case 6:
        return false;
      case 7:
        return false;
    }
    return false;
  }
}
