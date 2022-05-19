// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

class DisplayNobodyForm extends StatelessWidget {
  const DisplayNobodyForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/nobody.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    );
  }
}
