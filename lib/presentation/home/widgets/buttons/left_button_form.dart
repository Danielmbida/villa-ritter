import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/presentation/home/widgets/profil_page_form.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeftButtonForm extends StatelessWidget {
  const LeftButtonForm({
    Key? key,
    required this.widget,
    required this.isConnected,
    required this.isLeft,
  }) : super(key: key);

  final ProfileView widget;
  final bool isConnected;
  final bool isLeft;

  @override
  Widget build(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    return TextButton(
      onPressed: () {
        BlocProvider.of<UserActorBloc>(context).add(
          UserActorEvent.left(
            widget.user.copyWith(
              present: false,
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
