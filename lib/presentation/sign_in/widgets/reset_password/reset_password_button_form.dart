// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ResetPasswordButtonForm extends StatelessWidget {
  const ResetPasswordButtonForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    return InkWell(
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
            child: Text(
              "${AppLocalizations.of(context)!.password_forgot_string} ?",
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
