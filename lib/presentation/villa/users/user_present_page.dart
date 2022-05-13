import 'package:apptest/application/connect/connectivity_cubit.dart';
import 'package:apptest/application/watch_all_users_present/user_watch_all_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/core/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class UserPresentPage extends StatefulWidget {
  const UserPresentPage({Key? key}) : super(key: key);

  @override
  _UserPresentPageState createState() => _UserPresentPageState();
}

class _UserPresentPageState extends State<UserPresentPage>
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
      body: BlocBuilder<InternetCubit, InternetState>(
        builder: (context, intState) {
          return intState.maybeMap(
            orElse: () => Container(),
            disconnected: (_) {
              return Const.displayNotInternetState();
            },
            connected: (s) {
              return BlocBuilder<UserWatchAllBloc, UserWatchAllState>(
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
                      if (users.users.size < 1) {
                        return Stack(
                          children: [
                            Const.displayNobody(context),
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
                                      return Const.userInfoCardItem("present", user,
                                          index, context, _controller);
                                    },
                                  ),
                                ),
                                Const.nbUserCard(users.users, _animation),
                                _clearListBtn(users.users)
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

  ///Bouton pour vider la liste des personne dans la villa
  Positioned _clearListBtn(KtList<User> users) {
    return Positioned(
      bottom: 10,
      left: 10,
      child: InkWell(
        child: Card(
          elevation: 20,
          color: Colors.orange,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
            ),
            onPressed: () {
              Const.showFiredAllUserDialog(users, context);
            },
            child: const Text(
              "Vider la liste",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
