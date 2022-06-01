// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/auth/auth_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/core/users/alertDialogue/cancel_button_dialog.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:apptest/application/user_actor/user_actor_bloc.dart';

class DeleteAccountButton extends StatelessWidget {
  const DeleteAccountButton({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.red,
      elevation: 5,
      child: TextButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
              side: const BorderSide(
                color: Colors.red,
              ),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.red,
          ),
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  AppLocalizations.of(context)!.delete_my_account_string,
                ),
                actions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.red),
                        ),
                        onPressed: () => Navigator.pop(context),
                        child: Text(
                          AppLocalizations.of(context)!.cancel_string,
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            const Color(0xff20544c),
                          ),
                        ),
                        onPressed: () {
                          BlocProvider.of<UserActorBloc>(context).add(
                            UserActorEvent.unRegister(
                              user,
                            ),
                          );
                          context.router.replace(const SignInRoute());
                        },
                        child: Text(
                          AppLocalizations.of(context)!.confirm_string,
                        ),
                      ),
                    ],
                  ),
                ],
                titleTextStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20,
                ),
                content: Text(
                  AppLocalizations.of(context)!
                      .delete_my_account_confirm_dialog_content,
                ),
              );
            },
          );
        },
        child: Text(
          AppLocalizations.of(context)!.delete_my_account_string,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
