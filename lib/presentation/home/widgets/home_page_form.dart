import 'package:another_flushbar/flushbar.dart';
import 'package:apptest/application/connect/connectivity_cubit.dart';
import 'package:apptest/application/scan/scan_bloc.dart';
import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/application/user_watcher_me/user_watcher_me_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/injection.dart';
import 'package:apptest/presentation/core/display_no_internet_form.dart';
import 'package:apptest/presentation/home/widgets/profil_page_form.dart';
import 'package:apptest/presentation/home/widgets/speedial/speed_dial_form.dart';
import 'package:apptest/presentation/villa/news/display_news.form.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class HomePageForm extends StatefulWidget {
  final User user;

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

    return WillPopScope(
      onWillPop: () async {
        if (isDialOpen.value) {
          isDialOpen.value = false;
          return false;
        }
        return true;
      },
      child: Scaffold(
        floatingActionButton: const SpeedDialForm(),
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
                  return const DisplayNoInternetForm();
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
                                message:
                                    "Vous n'avez pas scanné le bon code qr",
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
                                    "La page de scan s'est fermés par manque d'activité",
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
