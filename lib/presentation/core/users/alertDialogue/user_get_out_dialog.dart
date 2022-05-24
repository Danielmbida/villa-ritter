import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/core/users/alertDialogue/cancel_button_dialog.dart';
import 'package:apptest/presentation/core/users/alertDialogue/validat_button_dialog.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserGetOutDialog extends StatelessWidget {
  const UserGetOutDialog({
    Key? key,
    required this.user,
    required this.allUsers,
    required this.forAllUsers,
  }) : super(key: key);
  final User user;
  final KtList<User> allUsers;
  final bool forAllUsers;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      content: Container(
        height: MediaQuery.of(context).size.height * 0.38,
        color: const Color.fromARGB(1, 255, 251, 241),
        child: Column(
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width * 0.19,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04, //30
            ),
            Text(
              AppLocalizations.of(context)!.get_out_string,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.013, //10
            ),
            Text(
              user.name != ""
                  ? "${AppLocalizations.of(context)!.get_out_one_string} ${user.name}"
                  : AppLocalizations.of(context)!.get_out_all_string,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CancelButtonDialog(),
                ValidateButtonDialog(
                  user: user,
                  allUsers: allUsers,
                  forAllUsers: forAllUsers,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
