// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/auth/auth_bloc.dart';
import 'package:apptest/application/token/user_token_actor/user_token_actor_bloc.dart';
import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/core/users/alertDialogue/app_alert_dialog.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          void onPressedCall() {
            context.read<UserTokenActorBloc>().add(
                  UserTokenActorEvent.delete(
                    user,
                  ),
                );
            context.read<AuthBloc>().add(
                  AuthEvent.unRegister(
                    user,
                  ),
                );

            context.router.replace(const SignInRoute());
          }

          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AppAlertDialog(
                user: user,
                title: AppLocalizations.of(context)!.delete_my_account_string,
                description: AppLocalizations.of(context)!
                    .delete_my_account_confirm_dialog_content,
                onPressedCall: onPressedCall,
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
