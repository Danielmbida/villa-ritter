// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

class UserInfoItemForm extends StatelessWidget {
  const UserInfoItemForm({
    Key? key,
    required this.field,
    required this.infos,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);

  final String field;
  final String infos;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white70),
              borderRadius: BorderRadius.circular(100),
            ),
            elevation: 5,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Icon(
                icon,
                color: iconColor,
                size: 25,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                field,
                style: const TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.black,
                ),
              ),
              Text(
                infos,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
