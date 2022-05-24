// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/presentation/villa/hours/hours_data.dart';
import 'package:apptest/presentation/villa/hours/table_hours_head.dart';
import 'package:flutter/material.dart';

class DisplayHoursForm extends StatelessWidget {
  const DisplayHoursForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String messageText =
        "Dès 20h45 La Villa Ritter est réservée aux jeunes de 15 ans et plus ";
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Column(
        children: [
          const TableHoursHead(),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: HoursData.days.length,
              itemBuilder: (BuildContext context, int index) {
                const Color textInTableColor = Colors.black;
                final String actDay = HoursData.days[index];
                return Table(
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border: TableBorder.all(
                    color: Colors.white,
                  ),
                  children: [
                    TableRow(
                      // ignore: use_is_even_rather_than_modulo
                      decoration: HoursData.days.indexOf(actDay) % 2 == 0
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
                            HoursData.days[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: textInTableColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 22),
                          child: Text(
                            HoursData.firstHours[index],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: textInTableColor,
                            ),
                          ),
                        ),
                        Text(
                          HoursData.secondHours[index],
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
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    messageText,
                    style: TextStyle(
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
