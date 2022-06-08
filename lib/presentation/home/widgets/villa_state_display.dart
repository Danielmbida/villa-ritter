// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/horaire/horaire_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VillaStateDisplay extends StatefulWidget {
  const VillaStateDisplay({
    Key? key,
  }) : super(key: key);

  @override
  State<VillaStateDisplay> createState() => _VillaStateDisplayState();
}

class _VillaStateDisplayState extends State<VillaStateDisplay> {
  String textState = "";
  Color colorState = Colors.white;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HoraireCubit, HoraireState>(
      builder: (context, state) {
        state.map(
          ouvert: (_) {
              textState =
                  AppLocalizations.of(context)!.villa_open_string.toUpperCase();
              colorState = Colors.amberAccent;
          },
          ferme: (_) {
              textState = AppLocalizations.of(context)!
                  .villa_close_string
                  .toUpperCase();
              colorState = Colors.redAccent;
          },
        );
      
      return Positioned(
        bottom: MediaQuery.of(context).size.height * 0.035,
        left: MediaQuery.of(context).size.width * 0.015,
        child: CircularText(
          children: [
            TextItem(
              text: Text(
                AppLocalizations.of(context)!.villa_is_string.toUpperCase(),
                style: const TextStyle(
                  fontSize: 13,
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
                textState,
                style: TextStyle(
                  fontSize: 13,
                  color: colorState,
                  fontWeight: FontWeight.bold,
                ),
              ),
              space: 20,
              startAngle: 90,
              startAngleAlignment: StartAngleAlignment.center,
              direction: CircularTextDirection.anticlockwise,
            ),
          ],
          radius:MediaQuery.of(context).size.height *.060,
          backgroundPaint: Paint()..color = Theme.of(context).primaryColor,
        ),
      );
      }
    );
  
  }

}
