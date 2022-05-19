// ignore_for_file: depend_on_referenced_packages
import 'package:another_flushbar/flushbar.dart';
import 'package:apptest/application/auth/auth_bloc.dart';
import 'package:apptest/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:apptest/application/connect/connectivity_cubit.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:apptest/presentation/sign_in/widgets/buttons/login_button_form.dart';
import 'package:apptest/presentation/sign_in/widgets/buttons/register_button_form.dart';
import 'package:apptest/presentation/sign_in/widgets/forms/login_fields_form.dart';
import 'package:apptest/presentation/sign_in/widgets/forms/register_fields_forms.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  ImageProvider? backgroundImage;
  @override
  void didChangeDependencies() {
    backgroundImage = const AssetImage('assets/images/porte2.jpg');
    precacheImage(backgroundImage!, context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final double leftPaddingCardS = mediaWidth * 0.17;
    final double rightPaddingCardS = mediaWidth * 0.14;
    final double toptPaddingCardS = mediaHeight * 0.25;
    final double paddingFormElems = mediaHeight * 0.01;
    const double rBorderFormElems = 15;
    const Color btnColor = Colors.blue;
    bool isConnected = false;

    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              Flushbar(
                backgroundColor: Colors.white,
                titleColor: Colors.blue,
                messageColor: Colors.red,
                message: failure.map(
                  serverError: (_) => 'Server Error',
                  invalidNameAndPasswordCombination: (_) =>
                      AppLocalizations.of(context)!
                          .invalid_email_and_password_string,
                ),
                duration: const Duration(seconds: 3),
              ).show(context);
            },
            (_) {
              context.router.replace(const SplashRoute());
              BlocProvider.of<AuthBloc>(context, listen: false).add(
                const AuthEvent.authCheckRequested(),
              );
            },
          ),
        );
      },
      builder: (context, state) {
        return BlocBuilder<InternetCubit, InternetState>(
          builder: (context, internetState) {
            internetState.maybeMap(
              orElse: () => Container(),
              connected: (s) {
                isConnected = true;
              },
              disconnected: (_) {
                isConnected = false;
              },
            );
            return ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [Colors.black12, Colors.black38],
                begin: Alignment.bottomCenter,
                end: Alignment.center,
              ).createShader(bounds),
              blendMode: BlendMode.darken,
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: SingleChildScrollView(
                  child: Container(
                    height: mediaHeight,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: backgroundImage!,
                        fit: BoxFit.fill,
                        colorFilter: const ColorFilter.mode(
                          Colors.black45,
                          BlendMode.darken,
                        ),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Padding(
                            padding: !state.isRegister
                                ? EdgeInsets.only(
                                    left: leftPaddingCardS,
                                    right: rightPaddingCardS,
                                    top: toptPaddingCardS,
                                  )
                                : EdgeInsets.only(
                                    left: 30,
                                    right: 30,
                                    top: mediaHeight * 0.10,
                                  ),
                            child: Form(
                              autovalidateMode: state.showErrorMessages
                                  ? AutovalidateMode.always
                                  : AutovalidateMode.disabled,
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    if (!state.isRegister) ...[
                                      LoginFieldsForm(
                                        paddingFormElems: paddingFormElems,
                                        rBorderFormElems: rBorderFormElems,
                                      )
                                    ] else ...[
                                      RegisterFieldsForm(
                                        paddingFormElems: paddingFormElems,
                                        rBorderFormElems: rBorderFormElems,
                                      )
                                    ],
                                    if (state.isRegister) ...[
                                      LoginButtonForm(
                                        btnColor: btnColor,
                                        action: "register",
                                        isInternet: isConnected,
                                      ),
                                      RegisterButtonForm(
                                        btnColor: btnColor,
                                        mediaHeight: mediaHeight,
                                        action: "login",
                                      )
                                    ] else ...[
                                      LoginButtonForm(
                                        btnColor: btnColor,
                                        action: "login",
                                        isInternet: isConnected,
                                      ),
                                      RegisterButtonForm(
                                        btnColor: btnColor,
                                        mediaHeight: mediaHeight,
                                        action: "register",
                                      )
                                    ],
                                    if (state.isSubmitting) ...[
                                      SizedBox(
                                        height: mediaHeight * 0.010,
                                      ),
                                      const LinearProgressIndicator(),
                                    ]
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
