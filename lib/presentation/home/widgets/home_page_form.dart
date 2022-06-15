// ignore_for_file: depend_on_referenced_packages
import 'package:another_flushbar/flushbar.dart';
import 'package:apptest/application/connect/connectivity_cubit.dart';
import 'package:apptest/application/scan/scan_bloc.dart';
import 'package:apptest/application/token/user_token_watcher/user_token_bloc.dart';
import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/application/user_watcher_me/user_watcher_me_bloc.dart';
import 'package:apptest/application/watch_all_users/watch_all_users_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/core/display_no_internet_form.dart';
import 'package:apptest/presentation/home/widgets/profil_dashboard.dart';
import 'package:apptest/presentation/home/widgets/speedial/speed_dial_form.dart';
import 'package:apptest/presentation/home/widgets/villa_state_display.dart';
import 'package:apptest/presentation/villa/news/display_news.form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:overlay_support/overlay_support.dart';

class HomePageForm extends StatefulWidget {
  final User user;

  const HomePageForm({required this.user});
  @override
  _HomePageFormState createState() => _HomePageFormState();
}

class _HomePageFormState extends State<HomePageForm> {
  ValueNotifier<bool> isDialOpen = ValueNotifier<bool>(false);
  final Color coloIconMenu = Colors.grey.shade300;
  bool present = false;
  List<String> listToken = [];
  List<User> listUsers = [];

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: WillPopScope(
        onWillPop: () async {
          if (isDialOpen.value) {
            isDialOpen.value = false;
            return false;
          }
          return true;
        },
        child: Scaffold(
          floatingActionButton: const SpeedDialForm(),
          body: BlocBuilder<InternetCubit, InternetState>(
            builder: (context, state) {
              return state.maybeMap(
                orElse: () => Container(),
                disconnected: (_) {
                  return const DisplayNoInternetForm();
                },
                connected: (s) {
                  return BlocBuilder<UserWatcherMeBloc, UserWatcherMeState>(
                    builder: (context, state) {
                      state.map(
                        initial: (_) {},
                        loadSuccess: (user) {
                          if (user.users.size > 0) {
                            present = true;
                          } else {
                            present = false;
                          }
                        },
                        loadFailure: (_) {},
                        loadInProgress: (_) {},
                      );
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
                                    title: AppLocalizations.of(context)!
                                        .title_fail_scan_string,
                                    message: AppLocalizations.of(context)!
                                        .fail_scan_message,
                                    duration: const Duration(seconds: 3),
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                    titleColor: Colors.white,
                                    messageColor: Colors.white,
                                  ).show(context);
                                },
                                scanTimeout: (_) {
                                  context
                                      .read<ScanBloc>()
                                      .add(const ScanEvent.scanResetted());
                                  Flushbar(
                                    title: AppLocalizations.of(context)!
                                        .closing_scan_title_string,
                                    message: AppLocalizations.of(context)!
                                        .closing_scan_message_string,
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                    titleColor: Colors.white,
                                    messageColor: Colors.white,
                                    duration: const Duration(seconds: 3),
                                  ).show(context);
                                },
                              );
                            },
                          ),
                          BlocListener<UserTokenBloc, UserTokenState>(
                            listener: (context, state) {
                              state.maybeMap(
                                orElse: () => Container(
                                  color: Colors.red,
                                ),
                                loadSucess: (token) {
                                  setState(() {
                                    token.tokens.asList().forEach((element) {
                                      listToken.add(element.token);
                                    });
                                  });
                                },
                              );
                            },
                          ),
                          BlocListener<WatchAllUsersBloc, WatchAllUsersState>(
                            listener: (context, state) {
                              state.maybeMap(
                                orElse: () => Container(
                                  color: Colors.red,
                                ),
                                loadSuccess: (users) {
                                  setState(() {
                                    listUsers = users.users.asList();
                                  });
                                },
                              );
                            },
                          ),
                        ],
                        child: SafeArea(
                          child: Scaffold(
                            body: SizedBox(
                              height: MediaQuery.of(context).size.height,
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    color:
                                        const Color.fromARGB(206, 32, 84, 76),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        present == false
                                            ? "${AppLocalizations.of(context)!.hello_string} ${widget.user.name}"
                                            : "${AppLocalizations.of(context)!.welcome_string} ${widget.user.name}",
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    color:
                                        const Color.fromARGB(1, 255, 251, 241),
                                    height: MediaQuery.of(context).size.height *
                                        0.30,
                                    child: Stack(
                                      children: [
                                        ProfileView(
                                          user: widget.user,
                                          presence: present,
                                          listToken: listToken,
                                        ),
                                        VillaStateDisplay(
                                          user: widget.user,
                                          users: listUsers,
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Expanded(
                                    child: DisplayNews(),
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
            },
          ),
        ),
      ),
    );
  }
}
