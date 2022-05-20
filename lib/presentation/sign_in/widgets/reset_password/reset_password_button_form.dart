// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

class ResetPasswordButtonForm extends StatelessWidget {
  const ResetPasswordButtonForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    return 
    InkWell(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              textStyle: TextStyle(
                fontSize: 14 / mediaHeight * mediaHeight,
              ),
            ),
            onPressed: () {
               context.router.push(const ResetPasswordRoute());
            },
            child: const Text(
              "Mot de passe oublier ?",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}