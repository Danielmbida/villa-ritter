import 'dart:async';
import 'package:another_flushbar/flushbar.dart';
import 'package:apptest/application/connect/connectivity_cubit.dart';
import 'package:apptest/application/news/bloc/watcher_news_bloc.dart';
import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/application/user_watcher_me/user_watcher_me_bloc.dart';
import 'package:apptest/application/watch_all_users/watch_all_users_bloc.dart';
import 'package:apptest/application/watch_all_users_present/user_watch_all_bloc.dart';
import 'package:apptest/presentation/home/widgets/profil_page_form.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:apptest/presentation/core/const.dart';
import 'package:apptest/presentation/villa/news/display_news.form.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:apptest/domain/auth/user.dart' as auth;
import 'package:apptest/application/scan/scan_bloc.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_route/auto_route.dart';
import 'package:animate_icons/animate_icons.dart';
import '../../../injection.dart';

class HomePageForm extends StatefulWidget {
  final auth.User user;

  const HomePageForm({required this.user});
  @override
  _HomePageFormState createState() => _HomePageFormState();
}

class _HomePageFormState extends State<HomePageForm> {
  ValueNotifier<bool> isDialOpen = ValueNotifier<bool>(false);
  final Color coloIconMenu = Colors.grey.shade300;

  @override
  Widget build(BuildContext context) {
    final double mediaHeight = MediaQuery.of(context).size.height;
    final double mediaWidth = MediaQuery.of(context).size.width;

    bool isConnected = true;
    return WillPopScope(
      onWillPop: () async {
        if (isDialOpen.value) {
          isDialOpen.value = false;
          return false;
        }
        return true;
      },
      child: Scaffold(
        floatingActionButton: _widgetSpeedDial(context),
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => getIt<UserWatcherMeBloc>()
                ..add(const UserWatcherMeEvent.watcherMeStarted()),
            ),
         
          ],
          child: BlocBuilder<InternetCubit, InternetState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => Container(),
                disconnected: (_) {
                  return Const.displayNotInternetState();
                },
                connected: (s) {
                  return MultiBlocListener(
                    listeners: [
                      BlocListener<ScanBloc, ScanState>(
                        listener: (context, state) {
                          state.map(
                            initial: (_) {},
                            sucess: (scan) {
                              BlocProvider.of<UserActorBloc>(context).add(
                                UserActorEvent.present(
                                  widget.user.copyWith(
                                    present: true,
                                    hour: DateFormat("HH:mm").format(
                                      DateTime.now(),
                                    ),
                                  ),
                                ),
                              );
                              context.read<ScanBloc>().add(
                                    const ScanEvent.scanResetted(),
                                  );
                            },
                            scanFail: (_) {
                              context.read<ScanBloc>().add(
                                    const ScanEvent.scanResetted(),
                                  );
                              Flushbar(
                                title: 'Echec du scan',
                                // ignore: avoid_escaping_inner_quotes
                                message:
                                    'Vous n\'avez pas scanné le bon code qr',
                                duration: const Duration(seconds: 3),
                                backgroundColor: Colors.white,
                                titleColor: Colors.blue,
                                messageColor: Colors.blue,
                              ).show(context);
                            },
                            scanTimeout: (_) {
                              context
                                  .read<ScanBloc>()
                                  .add(const ScanEvent.scanResetted());
                              Flushbar(
                                title: 'Fermeture du scan',
                                message:
                                    // ignore: avoid_escaping_inner_quotes
                                    'La page de scan s\'est fermés par manque d\'activité',
                                backgroundColor: Colors.white,
                                titleColor: Colors.blue,
                                messageColor: Colors.blue,
                                duration: const Duration(seconds: 3),
                              ).show(context);
                            },
                          );
                        },
                      ),
                    ],
                    child: Scaffold(
                      body: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: Column(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.38,
                              child: SizedBox(
                                child: Stack(
                                  children: [
                                    ProfileView(user: widget.user),
                                    Positioned(
                                      top: mediaHeight * 0.03,
                                      left: mediaWidth * 0.02,
                                      child: Image.asset(
                                        "assets/images/logo.png",
                                        color: Colors.black,
                                        width: mediaWidth * 0.15,
                                        height: mediaHeight * 0.12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 8 / mediaHeight * mediaHeight,
                                    child: Text(
                                      "ACTUALITÉS",
                                      style: TextStyle(
                                        fontSize:
                                            35 / mediaHeight * mediaHeight,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    top: 30,
                                    child: DisplayNews(),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

///Méthode mettant en place le menue avec
///les réseaux de la villa
SpeedDial _widgetSpeedDial(BuildContext context) {
  return SpeedDial(
    childrenButtonSize: 60,
    spaceBetweenChildren: 15,
    animatedIcon: AnimatedIcons.menu_close,
    animatedIconTheme: const IconThemeData(size: 35.0),
    renderOverlay: false, //change background of page
    curve: Curves.ease,
    tooltip: 'Réseaux et horaire',
    backgroundColor: Colors.grey.shade300,
    foregroundColor: Colors.black,
    animationSpeed: 450, //milliseconds
    children: [
      _speedDialChild(Colors.green, "phone", context),
      _speedDialChild(Colors.red, "youtube", context),
      _speedDialChild(Colors.blue, "facebook", context),
      _speedDialChild(null, "insta", context),
    ],
  );
}

///Cette méthode en place les icon
///dans le speedial (réseux)
SpeedDialChild _speedDialChild(
    Color? iconColor, String iconName, BuildContext context) {
  return SpeedDialChild(
    child: iconName == "insta"
        ? Image.asset(
            "assets/images/logo_insta.png",
            height: 40,
            width: 40,
          )
        : Icon(
            iconName == "youtube"
                ? FontAwesomeIcons.youtube
                : iconName != "facebook"
                    ? FontAwesomeIcons.phoneAlt
                    : FontAwesomeIcons.facebookF,
            color: iconColor,
          ),
    backgroundColor: Colors.grey.shade300,
    onTap: () {
      _networkAction(iconName, context);
    },
  );
}

///Cette méthode exécute l'action
///Correspondant à l'icon du menu clické
Future<String> _networkAction(String iconName, BuildContext context) async {
  switch (iconName) {
    case "insta":
      Const.launchURL("https://www.instagram.com/villabnc");
      break;
    case "youtube":
      Const.launchURL("https://www.youtube.com/user/villaritterbienne");
      break;
    case "facebook":
      Const.launchURL("https://www.facebook.com/villa.ritter");
      break;
    case "phone":
      context.router.push(
        const ContactHoursRoute(),
      );
      break;
  }
  return iconName;
}
