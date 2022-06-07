import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/home/widgets/profil_page_form.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class LeftButtonForm extends StatelessWidget {
  const LeftButtonForm({
    Key? key,
    required this.user,
    required this.isLeft,
  }) : super(key: key);

  // final ProfileView widget;
  final bool isLeft;
  final User user;

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    return TextButton(
      onPressed: () {
        BlocProvider.of<UserActorBloc>(context).add(
          UserActorEvent.left(
            user.copyWith(
              present: false,
              hour: DateFormat("HH:mm").format(
                DateTime.now(),
              ),
            ),
          ),
        );
      },
      child: InkWell(
        child: Card(
          color: Colors.red,
          child: Padding(
            padding: EdgeInsets.all(8.0 / mediaWidth * mediaWidth),
            child: SizedBox(
              child: Column(
                children: [
                  Icon(
                    FontAwesomeIcons.signOutAlt,
                    size: 60 / mediaWidth * mediaWidth,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
