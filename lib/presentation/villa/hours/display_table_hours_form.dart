// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/presentation/core/villa_datas.dart';
import 'package:apptest/presentation/villa/hours/table_hours_head.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DisplayHoursForm extends StatelessWidget {
  const DisplayHoursForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String messageText = AppLocalizations.of(context)!.infos_hour_string;
    final List<String> days = <String>[
      AppLocalizations.of(context)!.monday_string,
      AppLocalizations.of(context)!.tuesday_string,
      AppLocalizations.of(context)!.wednesday_string,
      AppLocalizations.of(context)!.thursday_string,
      AppLocalizations.of(context)!.friday_string,
    ];
    final List<String> firstHours = <String>[
      AppLocalizations.of(context)!.villa_close_string,
      "14:00-18:00",
      "14:00-18:00",
      "Fermée",
      "14:00-18:00",
    ];
    final List<String> secondHours = <String>[
      AppLocalizations.of(context)!.villa_close_string,
      "19:30-23:00",
      "19:30-23:00",
      "19:30-23:00",
      "19:30-00:00",
    ];
    VillaDatas(context: context);
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Column(
        children: [
          const TableHoursHead(),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: VillaDatas.days.length,
              itemBuilder: (BuildContext context, int index) {
                const Color textInTableColor = Colors.black;
                final String actDay = VillaDatas.days[index];
                return Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border: TableBorder.all(
                    color: Colors.white,
                  ),
                  children: [
                    TableRow(
                      // ignore: use_is_even_rather_than_modulo
                      decoration: VillaDatas.days.indexOf(actDay) % 2 == 0
                          ? BoxDecoration(
                              color: const Color(0XFF20544c).withOpacity(0.7),
                            )
                          : BoxDecoration(
                              color: const Color(0XFF20544c).withOpacity(0.5),
                            ),
                      children: [
                        ///Les céllules avec le contenue pour une ligne
                        ///du tableau
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            days[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: textInTableColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical:
                                MediaQuery.of(context).size.height * 0.024,
                          ),
                          child: Text(
                            firstHours[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: textInTableColor,
                            ),
                          ),
                        ),
                        Text(
                          secondHours[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: textInTableColor,
                          ),
                        )
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          Expanded(
            child: Container(
              color: const Color(0XFF20544c).withOpacity(0.8),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    messageText,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
