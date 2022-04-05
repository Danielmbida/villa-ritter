import 'package:another_flushbar/flushbar.dart';
import 'package:apptest/application/auth/auth_bloc.dart';
import 'package:apptest/application/connect/connectivity_cubit.dart';
import 'package:apptest/presentation/core/const.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../application/auth/sign_in_form/sign_in_form_bloc.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final mediaWidth = MediaQuery.of(context).size.width;

    final double leftPaddingCardS = mediaWidth * 0.17;
    final double rightPaddingCardS = mediaWidth * 0.14;
    final double toptPaddingCardS = mediaHeight * 0.25;
    final double paddingFormElems = mediaHeight * 0.01;
    final double iconSize = mediaHeight * 0.03;
    const double radiusBorderFormElems = 15;
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
                // title:  AppLocalizations.of(context)!.email_string,//'Error',
                message: failure.map(
                    serverError: (_) => 'Server Error',
                    invalidNameAndPasswordCombination: (_) =>
                        // 'Invalid name and password combination',
                        AppLocalizations.of(context)!
                            .invalid_email_and_password_string),
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
                // bottomNavigationBar: BottomAppBar(
                //   color: Colors.black.withOpacity(0.1),
                //   elevation: 0,
                //   child: !state.isRegister
                //       ? txtButton(btnColor, mediaHeight, context, "Inscrivez-vous")
                //       : txtButton(btnColor, mediaHeight, context, "login"),
                // ),
                body: SingleChildScrollView(
                  child: Container(
                    height: mediaHeight,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/porte2.jpg',
                        ),
                        fit: BoxFit.fill,
                        colorFilter:
                            ColorFilter.mode(Colors.black45, BlendMode.darken),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Text("Connexion",style: TextStyle(color: Colors.white,fontSize: 30),),

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
                                      textFormField(
                                        paddingFormElems,
                                        radiusBorderFormElems,
                                        "email",
                                      ),
                                      textFormField(
                                        paddingFormElems,
                                        radiusBorderFormElems,
                                        "password",
                                      ),
                                    ] else ...[
                                      textFormField(
                                        paddingFormElems,
                                        radiusBorderFormElems,
                                        "email",
                                      ),
                                      textFormField(
                                        paddingFormElems,
                                        radiusBorderFormElems,
                                        "password",
                                      ),
                                      textFormField(
                                        paddingFormElems,
                                        radiusBorderFormElems,
                                        "name",
                                      ),
                                      bithdayFormField(
                                        paddingFormElems,
                                        radiusBorderFormElems,
                                        context,
                                      ),
                                      textFormField(
                                        paddingFormElems,
                                        radiusBorderFormElems,
                                        "locality",
                                      ),
                                      genderFormField(
                                        paddingFormElems,
                                        radiusBorderFormElems,
                                        context,
                                        iconSize,
                                      ),
                                    ],
                                    if (state.isRegister) ...[
                                      elvButton(btnColor, context, "register",
                                          isConnected),
                                      txtButton(btnColor, mediaHeight, context,
                                          "login")
                                    ] else ...[
                                      elvButton(btnColor, context, "login",
                                          isConnected),
                                      txtButton(btnColor, mediaHeight, context,
                                          "register")
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

  ///Met en place le button pour switcher
  ///entre la connexion et l'inscription
  TextButton txtButton(
      Color btnColor, double mediaHeight, BuildContext context, String action) {
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

  ///Met en place le button permettant de
  ///se connecter au de s'inscrire
  SizedBox elvButton(
    Color btnColor,
    BuildContext context,
    String action,
    // ignore: avoid_positional_boolean_parameters
    bool isInternet,
  ) {
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
            Const.showNoInternetDialog(context);
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

  ///Met en place la séléction de la
  ///date d'anniverssaire dans le formulaire d'inscription
  Padding bithdayFormField(double paddingFormElems,
      double radiusBorderFormElems, BuildContext context) {
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

  ///Met en place le champs de la sélection du genre
  ///dans le formulaire
  Padding genderFormField(double paddingFormElems, double radiusBorderFormElems,
      BuildContext context, double iconSize) {
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

  ///Ecoute les changement dans les champs
  ///des formulaires
  void onChanged(String value, String formName) {
    switch (formName) {
      case "email":
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
  String? validator(String formName) {
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

  ///Met en place les champs email, mot de passe, nom
  ///et localité du formulaire
  Padding textFormField(
      double paddingFormElems, double radiusBorderFormElems, String formName) {
    String? labelTextForm;
    IconData? prefixIcon;
    TextInputType? textInputType;
    switch (formName) {
      case "email":
        labelTextForm = AppLocalizations.of(context)!.email_string;
        prefixIcon = Icons.email;
        textInputType = TextInputType.emailAddress;
        break;
      case "password":
        labelTextForm = AppLocalizations.of(context)!.password_string;
        prefixIcon = Icons.lock;
        textInputType = TextInputType.visiblePassword;
        break;
      case "name":
        labelTextForm = AppLocalizations.of(context)!.name_string;
        prefixIcon = Icons.people;
        textInputType = TextInputType.text;
        break;
      case "locality":
        labelTextForm = AppLocalizations.of(context)!.locality_string;
        prefixIcon = Icons.house;
        textInputType = TextInputType.text;
        break;
    }
    return Padding(
      padding: EdgeInsets.all(paddingFormElems),
      child: TextFormField(
        decoration: formFieldDecoration(
          radiusBorderFormElems,
          prefixIcon,
          labelTextForm,
        ),
        obscureText: formName == "password",
        autocorrect: false,
        onChanged: (value) => onChanged(value, formName),
        validator: (_) => validator(formName),
        keyboardType: textInputType,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  InputDecoration formFieldDecoration(double radiusBorderFormElems,
      IconData? prefixIcon, String? labelTextForm) {
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
