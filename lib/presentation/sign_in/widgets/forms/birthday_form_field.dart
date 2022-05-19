// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BirthdayFormField extends StatelessWidget {
  const BirthdayFormField({
    Key? key,
    required this.paddingFormElems,
    required this.radiusBorderFormElems,
    required this.context,
  }) : super(key: key);

  final double paddingFormElems;
  final double radiusBorderFormElems;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingFormElems),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(radiusBorderFormElems),
            ),
          ),
          filled: true,
          fillColor: Colors.white54.withOpacity(0.5),
          prefixIcon: const Icon(
            FontAwesomeIcons.birthdayCake,
            color: Colors.white,
          ),
          labelText: AppLocalizations.of(context)!.birthday_string,
          labelStyle: const TextStyle(
            color: Colors.white,
          ),
          hintText: AppLocalizations.of(context)!.date_format_string,
          hintStyle: const TextStyle(
            color: Colors.white,
          ),
        ),
        style: const TextStyle(
          color: Colors.white,
        ),
        autocorrect: false,
        onChanged: (value) => context
            .read<SignInFormBloc>()
            .add(SignInFormEvent.birthDateChanged(value)),
        validator: (_) =>
            context.read<SignInFormBloc>().state.birthDate.value.fold(
                  (f) => f.maybeMap(
                    invalidBirthDate: (_) =>
                        AppLocalizations.of(context)!.invalid_birthday_string,
                    orElse: () => null,
                  ),
                  (_) => null,
                ),
        keyboardType: TextInputType.text,
      ),
    );
  }
}
