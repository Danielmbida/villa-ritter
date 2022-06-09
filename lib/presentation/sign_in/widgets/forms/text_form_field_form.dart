// ignore_for_file: depend_on_referenced_packages, avoid_bool_literals_in_conditional_expressions
import 'package:apptest/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TextFormFieldForm extends StatefulWidget {
  const TextFormFieldForm({
    Key? key,
    required this.paddingFormElems,
    required this.rBorderFormElems,
    required this.formName,
    required this.labelTextForm,
    required this.prefixIcon,
    required this.textInputType,
  }) : super(key: key);

  final double paddingFormElems;
  final double rBorderFormElems;
  final String formName;
  final String? labelTextForm;
  final IconData? prefixIcon;
  final TextInputType? textInputType;

  @override
  State<TextFormFieldForm> createState() => _TextFormFieldFormState();
}

class _TextFormFieldFormState extends State<TextFormFieldForm> {
  bool isObscuretext = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(widget.paddingFormElems),
      child: TextFormField(
        decoration: formFieldDecoration(
          widget.rBorderFormElems,
          widget.prefixIcon,
          widget.labelTextForm,
        ),
        obscureText: widget.formName == "password" ? isObscuretext : false,
        autocorrect: false,
        onChanged: (value) => onChanged(value, widget.formName, context),
        validator: (_) => validator(widget.formName, context),
        keyboardType: widget.textInputType,
        style: TextStyle(
          color: widget.formName != "reset" ? Colors.white : Colors.black,
        ),
      ),
    );
  }

  ///Ecoute les changement dans les champs
  ///des formulaires
  void onChanged(String value, String formName, BuildContext context) {
    switch (formName) {
      case "email":
        context.read<SignInFormBloc>().add(
              SignInFormEvent.emailAddressChanged(value),
            );
        break;
      case "reset":
        context.read<SignInFormBloc>().add(
              SignInFormEvent.emailAddressChanged(value),
            );
        break;
      case "password":
        context.read<SignInFormBloc>().add(
              SignInFormEvent.passwordChanged(value),
            );
        break;
      case "name":
        context.read<SignInFormBloc>().add(
              SignInFormEvent.lastNameChanged(value),
            );
        break;
      case "locality":
        context.read<SignInFormBloc>().add(
              SignInFormEvent.localityChanged(value),
            );
        break;
    }
  }

  ///Gère l'apparîtion des méssages d'erreurs
  ///dans le formulaire
  String? validator(String formName, BuildContext context) {
    String? error;
    switch (formName) {
      case "email":
        error = context.read<SignInFormBloc>().state.emailAddress.value.fold(
              (f) => f.maybeMap(
                invalidEmailAddress: (_) =>
                    AppLocalizations.of(context)!.invalid_email_string,
                orElse: () => null,
              ),
              (_) => null,
            );
        break;
      case "reset":
        error = context.read<SignInFormBloc>().state.emailAddress.value.fold(
              (f) => f.maybeMap(
                invalidEmailAddress: (_) =>
                    AppLocalizations.of(context)!.invalid_email_string,
                orElse: () => null,
              ),
              (_) => null,
            );
        break;
      case "password":
        error = context.read<SignInFormBloc>().state.password.value.fold(
              (f) => f.maybeMap(
                invalidPassword: (_) =>
                    AppLocalizations.of(context)!.invalid_password_string,
                orElse: () => null,
              ),
              (_) => null,
            );
        break;
      case "name":
        error = context.read<SignInFormBloc>().state.lastName.value.fold(
              (f) => f.maybeMap(
                invalidTextField: (_) =>
                    AppLocalizations.of(context)!.invalid_name_string,
                orElse: () => null,
              ),
              (_) => null,
            );
        break;
      case "locality":
        error = context.read<SignInFormBloc>().state.locality.value.fold(
              (f) => f.maybeMap(
                invalidTextField: (_) =>
                    AppLocalizations.of(context)!.invalid_locality_string,
                orElse: () => null,
              ),
              (_) => null,
            );
        break;
    }
    return error;
  }

  InputDecoration formFieldDecoration(
    double radiusBorderFormElems,
    IconData? prefixIcon,
    String? labelTextForm,
  ) {
    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            widget.formName != "reset" ? radiusBorderFormElems : 0,
          ),
        ),
      ),
      filled: true,
      fillColor: widget.formName != "reset"
          ? Colors.white54.withOpacity(0.5)
          : Colors.grey.shade100,
      prefixIcon: Icon(
        prefixIcon,
        color: widget.formName != "reset" ? Colors.white : Colors.black,
      ),
      suffixIcon: widget.formName == "password"
          ? GestureDetector(
              onTap: () {
                setState(() {
                  isObscuretext = !isObscuretext;
                });
              },
              child: isObscuretext
                  ? const Icon(
                      Icons.visibility_rounded,
                      color: Colors.white,
                    )
                  : const Icon(
                      Icons.visibility_off_rounded,
                      color: Colors.white,
                    ),
            )
          : null,
      labelText: labelTextForm,
      labelStyle: TextStyle(
        color: widget.formName != "reset" ? Colors.white : Colors.black,
      ),
    );
  }
}
