// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderFormField extends StatelessWidget {
  const GenderFormField({
    Key? key,
    required this.paddingFormElems,
    required this.radiusBorderFormElems,
    required this.context,
    required this.iconSize,
  }) : super(key: key);

  final double paddingFormElems;
  final double radiusBorderFormElems;
  final BuildContext context;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(paddingFormElems),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: DropdownButtonFormField<String>(
              decoration: formFieldDecoration(
                radiusBorderFormElems,
                FontAwesomeIcons.genderless,
                AppLocalizations.of(context)!.gender_string,
              ),
              style: const TextStyle(
                color: Colors.white,
              ),
              dropdownColor: Colors.grey,
              iconSize: iconSize,
              onChanged: (value) => context.read<SignInFormBloc>().add(
                    SignInFormEvent.genderChanged(value!),
                  ),
              validator: (_) => context
                  .read<SignInFormBloc>()
                  .state
                  .gender
                  .value
                  .fold(
                    (f) => f.maybeMap(
                      invalidGender: (_) =>
                          AppLocalizations.of(context)!.invalid_gender_string,
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
              items: <String>[
                AppLocalizations.of(context)!.wommen_string,
                AppLocalizations.of(context)!.men_string,
                AppLocalizations.of(context)!.non_binary_string,
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration formFieldDecoration(
    double radiusBorderFormElems,
    IconData? prefixIcon,
    String? labelTextForm,
  ) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(radiusBorderFormElems),
        ),
      ),
      filled: true,
      fillColor: Colors.white54.withOpacity(0.5),
      prefixIcon: Icon(
        prefixIcon,
        color: Colors.white,
      ),
      labelText: labelTextForm,
      labelStyle: const TextStyle(
        color: Colors.white,
      ),
    );
  }
}
