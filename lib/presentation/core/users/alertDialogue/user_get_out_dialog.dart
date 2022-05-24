import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/core/users/alertDialogue/cancel_button_dialog.dart';
import 'package:apptest/presentation/core/users/alertDialogue/validat_button_dialog.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

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
            const Text(
              "Faire sortir",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.013, //10
            ),
            Text(
              user.name != ""
                  ? 'Confirmer la sortie de ${user.name}'
                  : 'Confirmer la sortie pour tous',
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
