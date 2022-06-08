// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/application/watch_all_users/watch_all_users_bloc.dart';
import 'package:apptest/application/watch_all_users_present/user_watch_all_bloc.dart';
import 'package:apptest/injection.dart';
import 'package:apptest/presentation/villa/users/display_all_user_page.dart';
import 'package:apptest/presentation/villa/users/user_present_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class UserManagePage extends StatefulWidget {
  const UserManagePage({Key? key}) : super(key: key);

  @override
  _UserManagePageState createState() => _UserManagePageState();
}

class _UserManagePageState extends State<UserManagePage> {
  bool firedAll = false;

  final double tabTextSize = 30;
  final double imageHeight = 200;
  int nbUserPresent = 0;
  int nbAllUser = 0;
  @override
  Widget build(BuildContext context) {
    final String textPresent = AppLocalizations.of(context)!.present_string;
    final String textRegister =
        AppLocalizations.of(context)!.register_tab_string;
    return BlocProvider(
      create: (context) => getIt<UserActorBloc>(),
      child:
         SafeArea(
          child: DefaultTabController(
            length: 2,
            child: Scaffold(
              appBar: AppBar(
                automaticallyImplyLeading: false,
                leading: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
                bottom: TabBar(
                  tabs: [
                    SizedBox(
                      child: Text(
                        textPresent,
                        style: TextStyle(
                          fontSize: tabTextSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      textRegister,
                      style: TextStyle(
                        fontSize: tabTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                flexibleSpace: Image.asset(
                  "assets/images/3.jpg",
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  height: imageHeight,
                ),
              ),
              body: const TabBarView(
                children: [
                  UserPresentPage(),
                  DisplayAllUserPage(),
                ],
              ),
            ),
          ),
        ),
      );
  }
}
