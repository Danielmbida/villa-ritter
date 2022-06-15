// ignore_for_file: avoid_void_async

import 'package:apptest/application/auth/auth_bloc.dart';
import 'package:apptest/application/token/user_token_actor/user_token_actor_bloc.dart';
import 'package:apptest/application/token/user_token_watcher/user_token_bloc.dart';
import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/application/user_watcher_me/user_watcher_me_bloc.dart';
import 'package:apptest/domain/token/token.dart';
import 'package:apptest/injection.dart';
import 'package:apptest/presentation/home/widgets/home_page_form.dart';
import 'package:apptest/presentation/sign_in/sign_in_page.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? _token;
  AndroidNotificationChannel channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    importance: Importance.high,
  );

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  @override
  void initState() {
    _getToken();
    requestPermission();
    loadFCM();
    listenFCM();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, authState) {
        return authState.maybeMap(
          authenticated: (auth) {
            if (_token != null) {
              BlocProvider.of<UserTokenActorBloc>(context).add(
                UserTokenActorEvent.create(
                  Token(id: auth.user.id, token: _token!),
                ),
              );
            }
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => getIt<UserActorBloc>(),
                ),
                BlocProvider(
                  create: (context) => getIt<UserTokenBloc>()
                    ..add(
                      const UserTokenEvent.watcherTokenstarted(),
                    ),
                ),
                BlocProvider(
                  create: (context) => getIt<UserWatcherMeBloc>()
                    ..add(const UserWatcherMeEvent.watcherMeStarted()),
                ),
              ],
              child: HomePageForm(user: auth.user),
            );
          },
          unauthenticated: (_) {
            return SignInPage();
          },
          orElse: () => Container(),
        );
      },
    );
  }

  Future _getToken() async {
    await FirebaseMessaging.instance.getToken().then((token) {
      setState(() {
        _token = token;
      });
    });
  }

  void requestPermission() async {
    final FirebaseMessaging messaging = FirebaseMessaging.instance;

    final NotificationSettings settings = await messaging.requestPermission();

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
    } else {}
  }

  void loadFCM() async {
    if (!kIsWeb) {
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(channel);
      await FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
        alert: true,
        badge: true,
        sound: true,
      );
    }
  }

  void listenFCM() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      final RemoteNotification? notification = message.notification;
      final AndroidNotification? android = message.notification?.android;
      if (notification != null && android != null && !kIsWeb) {
        flutterLocalNotificationsPlugin.show(
          notification.hashCode,
          notification.title,
          notification.body,
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              icon: 'assets/icon/ic_villa.png',
            ),
          ),
        );
      }
    });
  }
}
