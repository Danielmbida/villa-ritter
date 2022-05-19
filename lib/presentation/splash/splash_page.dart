// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/auth/auth_bloc.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (auth) {
            // print(auth.user.name);
            // print(auth.user.email);
            // print(auth.user.birthDate);
            context.router.replace(const HomeRoute());
          },
          unauthenticated: (auth) {
            context.router.replace(const SignInRoute());
            // print("déconnection splash");
          },
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
