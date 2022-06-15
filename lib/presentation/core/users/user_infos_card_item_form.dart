// ignore_for_file: depend_on_referenced_packages, deprecated_member_use
import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/core/users/alertDialogue/app_alert_dialog.dart';
import 'package:apptest/presentation/core/users/infosDialog/user_infos_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/collection.dart';

class UserInfosCardItemForm extends StatelessWidget {
  const UserInfosCardItemForm({
    Key? key,
    required this.user,
    required this.allUsers,
  }) : super(key: key);

  final User user;
  final KtList<User> allUsers;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        child: Material(
          child: InkWell(
            onLongPress: () {
              void onPressedCall() {
                BlocProvider.of<UserActorBloc>(context).add(
                  UserActorEvent.left(
                    user.copyWith(present: false),
                  ),
                );
                Navigator.of(context).pop();
              }

              if (user.present) {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AppAlertDialog(
                      user: user,
                      title:
                          "${AppLocalizations.of(context)!.get_out_one_title_string} ${user.name} !",
                      description:
                          "${user.name} ${AppLocalizations.of(context)!.get_out_one_string} ",
                      onPressedCall: onPressedCall,
                    );
                  },
                );
              }
            },
            onTap: () {
              showGeneralDialog(
                context: context,
                barrierDismissible: false,
                barrierLabel: "Modal",
                transitionDuration: const Duration(
                  milliseconds: 600,
                ),
                transitionBuilder:
                    (context, animation, secondaryAnimation, widget) {
                  return UserInfosDialog(animation: animation, user: user);
                },
                pageBuilder: (context, _animation1, __animation2) {
                  return const Text("");
                },
              );
            },
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey[300]!, width: 3),
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.grey[200]!.withOpacity(0.9),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CircleAvatar(
                            radius: user.present ? 40 : 25,
                            backgroundColor: Colors.white,
                            child: Icon(
                              FontAwesomeIcons.userAlt,
                              size: user.present ? 45 : 25,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Align(
                          child: Text(
                            user.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.navigate_next,
                            size: 40,
                            color: Colors.grey,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: MediaQuery.of(context).size.width * 0.25,
                          child: user.present
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(width: 8),
                                    const Icon(
                                      FontAwesomeIcons.clock,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 10),
                                    if (user.genre != "Femme")
                                      Text(
                                        "${AppLocalizations.of(context)!.arrive_at_men_string} ",
                                        style: const TextStyle(
                                          fontSize: 17,
                                        ),
                                      )
                                    else
                                      Text(
                                        "${AppLocalizations.of(context)!.arrive_at_wommen_string} ",
                                        style: const TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                    Text(
                                      user.hour,
                                      style: const TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                )
                              : const Text(""),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
