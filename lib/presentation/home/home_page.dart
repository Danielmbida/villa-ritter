import 'package:apptest/application/auth/auth_bloc.dart';
import 'package:apptest/presentation/home/widgets/home_page_form.dart';
import 'package:apptest/presentation/sign_in/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>
    (builder: (context, authState) {
      return authState.maybeMap(
        authenticated: (auth) {
          print("Bienvenu ${auth.user.name}");
          return HomePageForm(user: auth.user);
        },
        unauthenticated: (_) {
           print("déconnection hompage");
          return SignInPage();
        },
        orElse: () => Container(),
      );
    });
  }
}
