import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class LeftButtonForm extends StatelessWidget {
  const LeftButtonForm({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    final double mediah = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        BlocProvider.of<UserActorBloc>(context).add(
          UserActorEvent.present(
            user.copyWith(
              present: false,
              hour: DateFormat("HH:mm").format(
                DateTime.now(),
              ),
            ),
          ),
        );
      },
      child: Card(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Icon(
            // ignore: deprecated_member_use
            FontAwesomeIcons.signOutAlt,
            size: mediah * .090,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
