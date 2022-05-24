import 'package:apptest/domain/auth/user.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';

class UserCountForm extends StatelessWidget {
  const UserCountForm({
    Key? key,
    required this.users,
    required Animation<double> animation,
  })  : _animation = animation,
        super(key: key);

  final KtList<User> users;
  final Animation<double> _animation;

  @override
  Widget build(BuildContext context) => Positioned(
        bottom: MediaQuery.of(context).size.height * 0.10,
        right: 10,
        child: RotationTransition(
          turns: _animation,
          child: CircleAvatar(
            backgroundColor: Theme.of(context).primaryColor,
            radius: 20,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  users.size.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  // );
}
