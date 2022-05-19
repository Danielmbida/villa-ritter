// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class RegisterButtonForm extends StatelessWidget {
  const RegisterButtonForm({
    Key? key,
    required this.btnColor,
    required this.mediaHeight,
    required this.action,
  }) : super(key: key);

  final Color btnColor;
  final double mediaHeight;
  final String action;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: btnColor,
        textStyle: TextStyle(
          fontSize: 15 / mediaHeight * mediaHeight,
        ),
      ),
      onPressed: () {
        context.read<SignInFormBloc>().add(
              const SignInFormEvent.switchRegisterAndLoginPressed(),
            );
      },
      child: Text(
        action == "login"
            ? AppLocalizations.of(context)!.login_string
            : AppLocalizations.of(context)!.register_string,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
