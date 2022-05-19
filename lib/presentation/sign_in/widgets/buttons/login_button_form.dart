// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:apptest/presentation/core/users/alertDialogue/no_internet_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginButtonForm extends StatelessWidget {
  const LoginButtonForm({
    Key? key,
    required this.btnColor,
    required this.action,
    required this.isInternet,
  }) : super(key: key);

  final Color btnColor;
  final String action;
  final bool isInternet;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.65, // 250,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
              side: const BorderSide(color: Colors.blue),
            ),
          ),
        ),
        onPressed: () {
          if (isInternet) {
            action == "register"
                ? context.read<SignInFormBloc>().add(
                      const SignInFormEvent.registerWithUserFields(),
                    )
                : context.read<SignInFormBloc>().add(
                      const SignInFormEvent.signInWithNameAndPasswordPressed(),
                    );
          } else {
            showDialog(
              context: context,
              builder: (BuildContext context) => const NoInternetDialog(),
            );
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            action == "register"
                ? AppLocalizations.of(context)!.register_string
                : AppLocalizations.of(context)!.login_string,
          ),
        ),
      ),
    );
  }
}
