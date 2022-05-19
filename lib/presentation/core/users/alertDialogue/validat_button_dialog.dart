// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/collection.dart';

class ValidateButtonDialog extends StatelessWidget {
  const ValidateButtonDialog({
    Key? key,
    required this.user,
    required this.forAllUsers,
    required this.allUsers,
  }) : super(key: key);

  final User user;
  final bool forAllUsers;
  final KtList<User> allUsers;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
            side: const BorderSide(
              color: Colors.blue,
            ),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      ),
      onPressed: () {
        forAllUsers ==false
            ? BlocProvider.of<UserActorBloc>(context).add(
                UserActorEvent.left(
                  user.copyWith(present: false),
                ),
              )
            : allUsers.forEach(
                (user) {
                  BlocProvider.of<UserActorBloc>(context).add(
                    UserActorEvent.left(
                      user.copyWith(present: false),
                    ),
                  );
                },
              );
        // _controller.stop();
        Navigator.pop(context);
        // _controller.stop();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            FontAwesomeIcons.check,
            color: Colors.white,
            size: 15,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            'Confirmer',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
