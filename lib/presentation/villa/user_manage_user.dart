import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/application/user_watcher_me/user_watcher_me_bloc.dart';
import 'package:apptest/application/watch_all_users/watch_all_users_bloc.dart';
import 'package:apptest/application/watch_all_users_present/user_watch_all_bloc.dart';
import 'package:apptest/presentation/villa/display_all_user_page.dart';
import 'package:apptest/presentation/villa/user_present_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../injection.dart';

class UserManagePage extends StatefulWidget {
  const UserManagePage({Key? key}) : super(key: key);

  @override
  _UserManagePageState createState() => _UserManagePageState();
}

class _UserManagePageState extends State<UserManagePage> {
  bool firedAll = false;
  final String textHour = "Présent";
  final String textContact = "Inscrit";
  final double tabTextSize = 30;
  final double imageHeight = 200;
  int nbUserPresent = 0;
  int nbAllUser = 0;
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<WatchAllUsersBloc, WatchAllUsersState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              initial: (_) {},
              loadSuccess: (user) {
                setState(() {
                  nbAllUser = user.users.size;
                });
              },
            );
          },
        ),
        BlocListener<UserWatchAllBloc, UserWatchAllState>(
          listener: (context, state) {
            state.maybeMap(
              orElse: () {},
              initial: (_) {},
              loadSuccess: (user) {
                setState(() {
                  nbUserPresent = user.users.size;
                  print(nbUserPresent);
                });
              },
            );
          },
        ),
      ],
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            leading:  IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back),
            ),
            bottom: TabBar(
              tabs: [
                SizedBox(
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          if (nbUserPresent != 0)
                            Row(
                              children: [
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.28,
                                ),
                                CircleAvatar(
                                  backgroundColor: Colors.orange,
                                  radius: 10,
                                  child: Text(
                                    nbUserPresent.toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          Text(
                            textHour,
                            style: TextStyle(
                              fontSize: tabTextSize,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    if (nbAllUser != 0)
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.23,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.orange,
                            radius: 10,
                            child: Text(
                              nbAllUser.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    Text(
                      textContact,
                      style: TextStyle(
                        fontSize: tabTextSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
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
    );
  }
}
