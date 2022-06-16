// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/auth/auth_bloc.dart';
import 'package:apptest/application/connect/connectivity_cubit.dart';
import 'package:apptest/application/force_hour/force_hour_actor/force_hour_actor_bloc.dart';
import 'package:apptest/application/force_hour/watch/watch_force_hour_bloc.dart';
import 'package:apptest/application/horaire/horaire_cubit.dart';
import 'package:apptest/application/news/bloc/watcher_news_bloc.dart';
import 'package:apptest/application/scan/scan_bloc.dart';
import 'package:apptest/application/token/user_token_actor/user_token_actor_bloc.dart';
import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/application/user_watcher_me/user_watcher_me_bloc.dart';
import 'package:apptest/application/watch_all_users/watch_all_users_bloc.dart';
import 'package:apptest/application/watch_all_users_present/user_watch_all_bloc.dart';
import 'package:apptest/injection.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (context) => getIt<ScanBloc>(),
        ),
        BlocProvider<UserWatchAllBloc>(
          create: (context) => getIt<UserWatchAllBloc>()
            ..add(
              const UserWatchAllEvent.watchAllStarted(),
            ),
        ),
        BlocProvider<WatcherNewsBloc>(
          create: (context) => getIt<WatcherNewsBloc>()
            ..add(
              const WatcherNewsEvent.watchNewsStarted(),
            ),
        ),
        BlocProvider<WatchAllUsersBloc>(
          create: (context) => getIt<WatchAllUsersBloc>()
            ..add(
              const WatchAllUsersEvent.watchAllUsersStarted(),
            ),
        ),
        BlocProvider(
          create: (context) => InternetCubit(connectivity: Connectivity()),
        ),
        BlocProvider(
          create: (context) => HoraireCubit(),
        ),
        BlocProvider(
          create: (context) => getIt<UserActorBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UserTokenActorBloc>(),
        ),
        BlocProvider<WatchForceHourBloc>(
          create: (context) => getIt<WatchForceHourBloc>()
            ..add(
              const WatchForceHourEvent.watchForceHourStarted(),
            ),
        ),
        BlocProvider(
          create: (context) => getIt<ForceHourActorBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<UserWatcherMeBloc>()
            ..add(const UserWatcherMeEvent.watcherMeStarted()),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        localeListResolutionCallback: (locales, supportedLocales) {
          if (locales != null) {
            for (final locale in locales) {
              for (final supportedLocale in supportedLocales) {
                if (supportedLocale.languageCode == locale.languageCode) {
                  return supportedLocale;
                }
              }
            }
          }
          return supportedLocales.first;
        },
        debugShowCheckedModeBanner: false,
        title: 'Villa Ritter',
        theme: ThemeData(
          primaryColorDark: Colors.black,
          primaryColor: const Color(0xff20544c),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            secondary: Colors.white,
          ),
        ),
      ),
    );
  }
}
