// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CancelButtonDialog extends StatelessWidget {
  const CancelButtonDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: BorderSide(
              color: Colors.grey[300]!,
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      onPressed: () => Navigator.pop(context, 'Annuler'),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            FontAwesomeIcons.solidTimesCircle,
            color: Colors.grey,
            size: 15,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Annuler',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
