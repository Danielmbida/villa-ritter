// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
class TableHoursHead extends StatelessWidget {
  const TableHoursHead({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      border: TableBorder.all(
        color: Colors.white,
      ),
      children: const [
        TableRow(
          decoration: BoxDecoration(
            color: Color(0XFF20544c),
          ),
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Jour",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
            Text(
              "Période 1",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
            Text(
              "Période 2",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
