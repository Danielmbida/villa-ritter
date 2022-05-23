// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/presentation/sign_in/widgets/forms/birthday_form_field.dart';
import 'package:apptest/presentation/sign_in/widgets/forms/gender_form_field.dart';
import 'package:apptest/presentation/sign_in/widgets/forms/text_form_field_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RegisterFieldsForm extends StatelessWidget {
  const RegisterFieldsForm({
    Key? key,
    required this.paddingFormElems,
    required this.rBorderFormElems,
    this.labelTextForm,
    this.prefixIcon,
    this.textInputType,
  }) : super(key: key);

  final double paddingFormElems;
  final double rBorderFormElems;
  final String? labelTextForm;
  final IconData? prefixIcon;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormFieldForm(
          paddingFormElems: paddingFormElems,
          rBorderFormElems: rBorderFormElems,
          formName: "email",
          labelTextForm: AppLocalizations.of(context)!.email_string,
          prefixIcon: Icons.email,
          textInputType: TextInputType.visiblePassword,
        ),
        TextFormFieldForm(
          paddingFormElems: paddingFormElems,
          rBorderFormElems: rBorderFormElems,
          formName: "password",
          labelTextForm: AppLocalizations.of(context)!.password_string,
          prefixIcon: Icons.lock,
          textInputType: TextInputType.visiblePassword,
        ),
        TextFormFieldForm(
          paddingFormElems: paddingFormElems,
          rBorderFormElems: rBorderFormElems,
          formName: "name",
          labelTextForm: AppLocalizations.of(context)!.name_string,
          prefixIcon: Icons.people,
          textInputType: TextInputType.text,
        ),
        BirthdayFormField(
          paddingFormElems: paddingFormElems,
          radiusBorderFormElems: rBorderFormElems,
          context: context,
        ),
        TextFormFieldForm(
          paddingFormElems: paddingFormElems,
          rBorderFormElems: rBorderFormElems,
          formName: "locality",
          labelTextForm: AppLocalizations.of(context)!.locality_string,
          prefixIcon: Icons.house,
          textInputType: TextInputType.text,
        ),
        GenderFormField(
          paddingFormElems: paddingFormElems,
          radiusBorderFormElems: rBorderFormElems,
          context: context,
          iconSize: 15,
        ),
      ],
    );
  }
}
