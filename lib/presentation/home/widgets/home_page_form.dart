// ignore_for_file: depend_on_referenced_packages
import 'package:another_flushbar/flushbar.dart';
import 'package:apptest/application/connect/connectivity_cubit.dart';
import 'package:apptest/application/scan/scan_bloc.dart';
import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/application/user_watcher_me/user_watcher_me_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/core/display_no_internet_form.dart';
import 'package:apptest/presentation/home/cloud_message_page.dart';
import 'package:apptest/presentation/home/widgets/profil_dashboard.dart';
import 'package:apptest/presentation/home/widgets/speedial/speed_dial_form.dart';
import 'package:apptest/presentation/home/widgets/villa_state_display.dart';
import 'package:apptest/presentation/villa/news/display_news.form.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
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
  String text = "message";
  late int _totalNotifications;
  late final FirebaseMessaging _messaging;
  PushNotification? _notificationInfo;
  @override
  void initState() {
    _totalNotifications = 0;
    // registerNotification();
    checkForInitialMessage();
    // registerNotification();
    print("lancement");
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      final PushNotification notification = PushNotification(
        title: message.notification?.title,
        body: message.notification?.body,
        dataTitle: message.notification?.title,
        dataBody: message.notification?.body,
      );
      setState(() {
        _notificationInfo = notification;
      });
    });

    super.initState();
  }

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
                      return BlocListener<ScanBloc, ScanState>(
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
                                backgroundColor: Theme.of(context).primaryColor,
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
                                backgroundColor: Theme.of(context).primaryColor,
                                titleColor: Colors.white,
                                messageColor: Colors.white,
                                duration: const Duration(seconds: 3),
                              ).show(context);
                            },
                          );
                        },
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
                                        ),
                                        VillaStateDisplay(
                                          user: widget.user,
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

  Future _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    print("Handling a background message: ${message.messageId}");
  }

  checkForInitialMessage() async {
    print("check");
    await Firebase.initializeApp();
    final RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    if (initialMessage != null) {
      print("il y a message");
      PushNotification notification = PushNotification(
        title: initialMessage.notification?.title,
        body: initialMessage.notification?.body,
      );
      setState(() {
        _notificationInfo = notification;
        _totalNotifications++;
      });
    } else {
      print("il y a pas message");
    }
  }

  void registerNotification() async {
    // 1. Initialize the Firebase app
    await Firebase.initializeApp();

    // 2. Instantiate Firebase Messaging
    _messaging = FirebaseMessaging.instance;
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

    // 3. On iOS, this helps to take the user permissions
    final NotificationSettings settings = await _messaging.requestPermission();

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User granted permission');

      // For handling the received notifications
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        // Parse the message received
        final PushNotification notification = PushNotification(
          title: message.notification?.title,
          body: message.notification?.body,
        );

        setState(() {
          _notificationInfo = notification;
          _totalNotifications++;
        });
        if (_notificationInfo != null) {
          // For displaying the notification as an overlay
          print('pas de notif');
          showSimpleNotification(
            Text(notification.title!),
            // leading: NotificationBadge(totalNotifications: _totalNotifications),
            subtitle: Text(_notificationInfo!.body!),
            background: Colors.cyan.shade700,
            duration: const Duration(seconds: 2),
          );
        }
      });
    } else {
      print('User declined or has not accepted permission');
    }
  }
}
