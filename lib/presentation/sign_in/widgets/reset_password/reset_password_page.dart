// ignore_for_file: depend_on_referenced_packages
import 'package:another_flushbar/flushbar.dart';
import 'package:apptest/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:apptest/domain/auth/value_objects.dart';
import 'package:apptest/injection.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:apptest/presentation/sign_in/widgets/forms/text_form_field_form.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    String message =
        "Un lien vous a été envoyer pour réinitialiser votre mot de passe,\n vérifier votre de boit de reception";
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () {},
            (either) => either.fold(
              (failure) {
                Flushbar(
                  flushbarPosition: FlushbarPosition.TOP,
                  isDismissible: true,
                  backgroundColor: Colors.black,
                  titleColor: Colors.white,
                  messageColor: Colors.white,
                  message: failure.map(
                    serverError: (_) => 'Server Error',
                    invalidNameAndPasswordCombination: (_) =>
                        "Aucun compte n'a été créé avec cette email",
                  ),
                  duration: const Duration(seconds: 3),
                ).show(context);
              },
              (_) {
                 context.router.push(SuccefulMessageRoute(email: state.emailAddress.getOrCrash()));
                // showDialog(
                //   context: context,
                //   builder: (context) {
                //     return ResetConfirmDialog(
                //       message: message,
                //       resetContext: context,
                //     );
                //   },
                // );
              },
            ),
          );
        },
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              body: SizedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          InkWell(
                            child: const Icon(Icons.close),
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    const ListTile(
                      title: Text(
                        "Mot de passe oublié",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                      subtitle: Text(
                        "Reinitialisez votre mot de passe grâce a votre email",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            "Entrez votre email",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Form(
                          autovalidateMode: state.showErrorMessages
                              ? AutovalidateMode.always
                              : AutovalidateMode.disabled,
                          child: const TextFormFieldForm(
                            paddingFormElems: 10,
                            rBorderFormElems: 1,
                            formName: "reset",
                            labelTextForm: "Email",
                            prefixIcon: Icons.email,
                            textInputType: TextInputType.text,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              side: const BorderSide(color: Colors.white),
                            ),
                          ),
                          onPressed: () {
                            context.read<SignInFormBloc>().add(
                                  const SignInFormEvent
                                      .resetPasswordWithEmailPressed(),
                                );
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Text("Envoyer"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
