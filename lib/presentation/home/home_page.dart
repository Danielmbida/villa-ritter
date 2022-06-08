import 'package:apptest/application/auth/auth_bloc.dart';
import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/application/user_watcher_me/user_watcher_me_bloc.dart';
import 'package:apptest/injection.dart';
import 'package:apptest/presentation/home/widgets/home_page_form.dart';
import 'package:apptest/presentation/sign_in/sign_in_page.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, authState) {
        return authState.maybeMap(
          authenticated: (auth) {
            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => getIt<UserActorBloc>(),
                ),
                BlocProvider(
                  create: (context) => getIt<UserWatcherMeBloc>(),
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
}
