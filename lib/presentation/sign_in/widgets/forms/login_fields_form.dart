// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/presentation/sign_in/widgets/forms/birthday_form_field.dart';
import 'package:apptest/presentation/sign_in/widgets/forms/gender_form_field.dart';
import 'package:apptest/presentation/sign_in/widgets/forms/text_form_field_form.dart';
import 'package:flutter/material.dart';

class LoginFieldsForm extends StatelessWidget {
  const LoginFieldsForm({
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
          labelTextForm: "Email",
          prefixIcon: Icons.email,
          textInputType: TextInputType.visiblePassword,
        ),
        TextFormFieldForm(
          paddingFormElems: paddingFormElems,
          rBorderFormElems: rBorderFormElems,
          formName: "password",
          labelTextForm: "mot de passe",
          prefixIcon: Icons.lock,
          textInputType: TextInputType.visiblePassword,
        ),
      ],
    );
  }
}
