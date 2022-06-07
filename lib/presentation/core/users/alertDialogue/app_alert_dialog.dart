// ignore_for_file: depend_on_referenced_packages
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
class AppAlertDialog extends StatelessWidget {
  
  const AppAlertDialog({
    Key? key,
    required this.user,
    required this.title,
    required this.description,
    required this.onPressedCall,
  }) : super(key: key);

  final User user;
  final String title;
  final String description;
  final Function onPressedCall;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
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
                onPressedCall();
                // BlocProvider.of<UserActorBloc>(context).add(
                //   UserActorEvent.unRegister(
                //     user,
                //   ),
                // );
                // context.router.replace(const SignInRoute());
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
        description,
        // AppLocalizations.of(context)!
        //     .delete_my_account_confirm_dialog_content,
      ),
    );
  }
}
