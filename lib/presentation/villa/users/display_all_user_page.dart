// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/connect/connectivity_cubit.dart';
import 'package:apptest/application/watch_all_users/watch_all_users_bloc.dart';
import 'package:apptest/presentation/core/display_no_internet_form.dart';
import 'package:apptest/presentation/core/users/display_nobody_form.dart';
import 'package:apptest/presentation/core/users/user_count_form.dart';
import 'package:apptest/presentation/core/users/user_infos_card_item_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DisplayAllUserPage extends StatefulWidget {
  const DisplayAllUserPage({Key? key}) : super(key: key);

  @override
  _DisplayAllUserPageState createState() => _DisplayAllUserPageState();
}

class _DisplayAllUserPageState extends State<DisplayAllUserPage>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<InternetCubit, InternetState>(
        builder: (context, intstate) {
          return intstate.maybeMap(
            orElse: () => Container(),
            disconnected: (_) {
              return const DisplayNoInternetForm();
            },
            connected: (s) {
              return BlocBuilder<WatchAllUsersBloc, WatchAllUsersState>(
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () {
                      return Container();
                    },
                    loadInProgress: (_) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                    loadSuccess: (users) {
                      if (users.users.size == 0) {
                        return Stack(
                          children: const [
                            DisplayNobodyForm(),
                          ],
                        );
                      }
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.height * 0.85,
                                  child: ListView.builder(
                                    itemCount: users.users.size,
                                    itemBuilder: (context, index) {
                                      final user = users.users[index];
                                      return UserInfosCardItemForm(
                                        allUsers: users.users,
                                        user: user,
                                      );
                                    },
                                  ),
                                ),
                                UserCountForm(
                                  users: users.users,
                                  animation: _animation,
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
