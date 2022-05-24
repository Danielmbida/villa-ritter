// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/connect/connectivity_cubit.dart';
import 'package:apptest/application/watch_all_users_present/user_watch_all_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/domain/core/value_objects.dart';
import 'package:apptest/presentation/core/display_no_internet_form.dart';
import 'package:apptest/presentation/core/users/alertDialogue/user_get_out_dialog.dart';
import 'package:apptest/presentation/core/users/display_nobody_form.dart';
import 'package:apptest/presentation/core/users/user_count_form.dart';
import 'package:apptest/presentation/core/users/user_infos_card_item_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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

  User user = User(
    birthDate: "",
    email: "",
    genre: "",
    hour: "",
    id: UniqueId(),
    locality: "",
    name: "",
    present: false,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<InternetCubit, InternetState>(
        builder: (context, intState) {
          return intState.maybeMap(
            orElse: () => Container(),
            disconnected: (_) {
              return const DisplayNoInternetForm();
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
                          children: const [
                            DisplayNobodyForm(),
                          ],
                        );
                      }
                      return SingleChildScrollView(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.85,
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
                            Positioned(
                              bottom: MediaQuery.of(context).size.height * 0.09,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.30,
                                  child: FloatingActionButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return UserGetOutDialog(
                                            user: user,
                                            allUsers: users.users,
                                            forAllUsers: true,
                                          );
                                        },
                                      );
                                    },
                                    child: Text(
                                      AppLocalizations.of(context)!
                                          .empty_list_string,
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
