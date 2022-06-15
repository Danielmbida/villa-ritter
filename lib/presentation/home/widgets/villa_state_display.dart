// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/force_hour/force_hour_actor/force_hour_actor_bloc.dart';
import 'package:apptest/application/force_hour/watch/watch_force_hour_bloc.dart';
import 'package:apptest/application/horaire/horaire_cubit.dart';
import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/villa_force/force.dart';
import 'package:apptest/presentation/core/villa_datas.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VillaStateDisplay extends StatefulWidget {
  const VillaStateDisplay({
    Key? key,
    required this.user,
    required this.users,
  }) : super(key: key);

  final User user;
  final List<User> users;

  @override
  State<VillaStateDisplay> createState() => _VillaStateDisplayState();
}

class _VillaStateDisplayState extends State<VillaStateDisplay> {
  String textState = "";
  Color colorState = Colors.white;
  bool forceClosed = false;
  bool forceOpen = false;
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatchForceHourBloc, WatchForceHourState>(
      builder: (context, state) {
        state.maybeMap(
          orElse: () => Container(),
          initial: (_) {
            forceClosed = false;
            forceOpen = false;
          },
          loadSuccess: (hour) {
            if (hour.hours[0].close == true) {
              forceClosed = true;
              isOpen = false;
              textState = AppLocalizations.of(context)!
                  .villa_close_string
                  .toUpperCase();
              colorState = Colors.redAccent;
              for (final element in widget.users) {
                BlocProvider.of<UserActorBloc>(context).add(
                  UserActorEvent.left(
                    element.copyWith(present: false),
                  ),
                );
              }
            } else if (hour.hours[0].open) {
              forceOpen = true;
              isOpen = true;
              textState =
                  AppLocalizations.of(context)!.villa_open_string.toUpperCase();
              colorState = Colors.amberAccent;
            } else {
              forceClosed = false;
              forceOpen = false;
            }
          },
        );
        return BlocBuilder<HoraireCubit, HoraireState>(
          builder: (context, state) {
            if (forceClosed == false && forceOpen == false) {
              state.map(
                ouvert: (_) {
                  isOpen = true;
                  textState = AppLocalizations.of(context)!
                      .villa_open_string
                      .toUpperCase();
                  colorState = Colors.amberAccent;
                },
                ferme: (_) {
                  isOpen = false;
                  textState = AppLocalizations.of(context)!
                      .villa_close_string
                      .toUpperCase();
                  colorState = Colors.redAccent;
                  for (final element in widget.users) {
                    context.read<UserActorBloc>().add(
                          UserActorEvent.left(
                            element.copyWith(present: false),
                          ),
                        );
                  }
                },
              );
            }
            return Positioned(
              bottom: MediaQuery.of(context).size.height * 0.035,
              left: MediaQuery.of(context).size.width * 0.015,
              child: InkWell(
                onTap: () {
                  if (widget.user.email == VillaDatas.villaEmail) {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext bc) {
                        return SizedBox(
                          child: Wrap(
                            children: <Widget>[
                              ListTile(
                                leading: const Icon(
                                  FontAwesomeIcons.doorOpen,
                                  color: Colors.amberAccent,
                                ),
                                title: Text(
                                  AppLocalizations.of(context)!
                                      .force_villa_open_question_string,
                                ),
                                onTap: () {
                                  openByAdmin();
                                  Navigator.of(context).pop();
                                },
                              ),
                              const Divider(),
                              ListTile(
                                leading: const Icon(
                                  FontAwesomeIcons.doorClosed,
                                  color: Colors.red,
                                ),
                                title: Text(
                                  AppLocalizations.of(context)!
                                      .force_villa_close_question_string,
                                ),
                                onTap: () {
                                  closeByAdmin(widget.users);
                                  Navigator.of(context).pop();
                                },
                              ),
                              const Divider(),
                              ListTile(
                                leading: const Icon(
                                  FontAwesomeIcons.clock,
                                  color: Color(0xff20544c),
                                ),
                                title: Text(
                                  AppLocalizations.of(context)!
                                      .default_hour_string,
                                ),
                                onTap: () {
                                  defaultHourBack();
                                  Navigator.of(context).pop();
                                },
                              ),
                              const Divider(),
                              ListTile(
                                leading: const Icon(Icons.close),
                                title: Text(
                                  AppLocalizations.of(context)!.cancel_string,
                                  style: const TextStyle(color: Colors.red),
                                ),
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          ),
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
    setState(() {
      isOpen = false;
    });
    context.read<ForceHourActorBloc>().add(
          ForceHourActorEvent.closeVilla(
            Force(id: widget.user.id, open: false, close: true),
          ),
        );
    for (final element in users) {
      BlocProvider.of<UserActorBloc>(context).add(
        UserActorEvent.left(
          element.copyWith(present: false),
        ),
      );
    }
  }

  void openByAdmin() {
    setState(() {
      isOpen = true;
    });
    context.read<ForceHourActorBloc>().add(
          ForceHourActorEvent.openVilla(
            Force(id: widget.user.id, open: true, close: false),
          ),
        );
  }

  void defaultHourBack() {
    setState(() {
      forceClosed = false;
      forceOpen = false;
    });

    context.read<ForceHourActorBloc>().add(
          ForceHourActorEvent.defaultHour(
            Force(id: widget.user.id, open: false, close: false),
          ),
        );
  }
}
