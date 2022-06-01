import 'package:another_flushbar/flushbar.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/core/users/alertDialogue/delete_account_button.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:apptest/application/auth/auth_bloc.dart';
import 'package:apptest/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:apptest/application/connect/connectivity_cubit.dart';
import 'package:apptest/presentation/core/users/infosDialog/user_infos_item_form.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UnRegisterDialog extends StatefulWidget {
  const UnRegisterDialog({
    Key? key,
    required this.user,
  }) : super(key: key);
  final User user;

  @override
  State<UnRegisterDialog> createState() => _UnRegisterDialogState();
}

class _UnRegisterDialogState extends State<UnRegisterDialog> {
  bool isDisable = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<InternetCubit, InternetState>(
      listener: (context, internetState) {
        internetState.maybeMap(
          orElse: () {},
          disconnected: (_) {
           setState(() {
              isDisable = true;
            });

          },
          connected: (s) {
            setState(() {
              isDisable = false;
            });
          },
        );
      },
      child: SafeArea(
        child: Scaffold(
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.01,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .1,
                  left: MediaQuery.of(context).size.width * .22,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: Text(
                      "Mon profil",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width * 0.10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.18,
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        UserInfoItemForm(
                          field: AppLocalizations.of(context)!.name_string,
                          infos: widget.user.name,
                          icon: Icons.person_outline_outlined,
                          iconColor: Colors.yellow,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        UserInfoItemForm(
                          field: AppLocalizations.of(context)!.email_string,
                          infos: widget.user.email,
                          icon: Icons.email_outlined,
                          iconColor: Colors.blue,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        UserInfoItemForm(
                          field: AppLocalizations.of(context)!.birthday_string,
                          infos: widget.user.birthDate,
                          icon: FontAwesomeIcons.birthdayCake,
                          iconColor: Colors.pink,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        UserInfoItemForm(
                          field: AppLocalizations.of(context)!.gender_string,
                          infos: _userGender(widget.user.genre, context),
                          icon: FontAwesomeIcons.transgenderAlt,
                          iconColor: Colors.black,
                        ),
                      ],
                    ),
                  ),
                ),
                if (!isDisable)
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * .1,
                    left: MediaQuery.of(context).size.width * .50,
                    child: DeleteAccountButton(
                      user: widget.user,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String _userGender(gender, BuildContext context) {
  String userGender = "";
  if (gender == "Non-Binaire" ||
      gender == "Non-Binary" ||
      gender == "Nicht-binär") {
    userGender = AppLocalizations.of(context)!.non_binary_string;
  } else if (gender == "Femme" || gender == "Women" || gender == "Frau") {
    userGender = AppLocalizations.of(context)!.wommen_string;
  } else if (gender == "Homme" || gender == "Men" || gender == "Männlich") {
    userGender = AppLocalizations.of(context)!.men_string;
  }
  return userGender;
}
