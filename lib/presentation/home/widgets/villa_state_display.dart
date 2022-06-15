// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/horaire/horaire_cubit.dart';
import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/application/watch_all_users/watch_all_users_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/core/users/alertDialogue/app_alert_dialog.dart';
import 'package:apptest/presentation/core/villa_datas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VillaStateDisplay extends StatefulWidget {
  const VillaStateDisplay({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  State<VillaStateDisplay> createState() => _VillaStateDisplayState();
}

class _VillaStateDisplayState extends State<VillaStateDisplay> {
  String textState = "";
  Color colorState = Colors.white;
  bool forceClosed = false;
  bool isOpen = false;
  List<User> users = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatchAllUsersBloc, WatchAllUsersState>(
      builder: (context, state) {
        state.maybeMap(
          orElse: () => Container(),
          initial: (_) {},
          loadSuccess: (user) {
            users = user.users.asList();
            user.users.asList().forEach((elem) {
              if (elem.email == VillaDatas.villaEmail) {
                if (elem.closeByAdmin == true) {
                  forceClosed = false;
                } else {
                  forceClosed = true;
                }
              }
            });
          },
        );
        return BlocBuilder<HoraireCubit, HoraireState>(
          builder: (context, state) {
            state.map(
              ouvert: (_) {
                if (!forceClosed) {
                  isOpen = true;
                  textState = AppLocalizations.of(context)!
                      .villa_open_string
                      .toUpperCase();
                  colorState = Colors.amberAccent;
                } else {
                  isOpen = false;
                  textState = AppLocalizations.of(context)!
                      .villa_close_string
                      .toUpperCase();
                  colorState = Colors.redAccent;
                  // context.read<UserActorBloc>().add(
                  //       UserActorEvent.left(
                  //         widget.user.copyWith(present: false),
                  //       ),
                  //     );
                }
              },
              ferme: (_) {
                isOpen = false;
                textState = AppLocalizations.of(context)!
                    .villa_close_string
                    .toUpperCase();
                colorState = Colors.redAccent;
                // context.read<UserActorBloc>().add(
                //       UserActorEvent.left(
                //         widget.user.copyWith(present: false),
                //       ),
                //     );
              },
            );
            return Positioned(
              bottom: MediaQuery.of(context).size.height * 0.035,
              left: MediaQuery.of(context).size.width * 0.015,
              child: InkWell(
                onLongPress: () {
                  void onPressedCall() {
                      //  closeByAdmin(users);
                    if (forceClosed == false) {
                      closeByAdmin(users);
                    } else {
                      defaultHourBack();
                    }
                  }
                  if (widget.user.email == VillaDatas.villaEmail) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AppAlertDialog(
                          user: widget.user,
                          title: isOpen == false
                              ? "${AppLocalizations.of(context)!.villa_is_string} ${AppLocalizations.of(context)!.villa_close_string} !"
                              : "${AppLocalizations.of(context)!.villa_is_string} ${AppLocalizations.of(context)!.villa_open_string} ! ",
                          description: isOpen == true
                              ? AppLocalizations.of(context)!
                                  .force_villa_close_question_string
                              : AppLocalizations.of(context)!
                                  .force_villa_open_question_string,
                          onPressedCall: onPressedCall,
                        );
                      },
                    );
                  }
                },
                child: CircularText(
                  children: [
                    TextItem(
                      text: Text(
                        AppLocalizations.of(context)!
                            .villa_is_string
                            .toUpperCase(),
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      space: 12,
                      startAngle: -90,
                      startAngleAlignment: StartAngleAlignment.center,
                    ),
                    TextItem(
                      text: Text(
                        textState,
                        style: TextStyle(
                          fontSize: 13,
                          color: colorState,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      space: 20,
                      startAngle: 90,
                      startAngleAlignment: StartAngleAlignment.center,
                      direction: CircularTextDirection.anticlockwise,
                    ),
                  ],
                  radius: MediaQuery.of(context).size.height * .060,
                  backgroundPaint: Paint()
                    ..color = Theme.of(context).primaryColor,
                ),
              ),
            );
          },
        );
      },
    );
  }

  void closeByAdmin(List<User> users) {
    for (final user in users) {
      if (user.email == VillaDatas.villaEmail) {
        context.read<UserActorBloc>().add(
              UserActorEvent.changeVillaHour(
                user.copyWith(closeByAdmin: true),
              ),
            );
      }
    }
  }

  void defaultHourBack() {
    // print("back");
    context.read<UserActorBloc>().add(
          UserActorEvent.changeVillaHour(
            widget.user.copyWith(closeByAdmin: false),
          ),
        );
  }
}
