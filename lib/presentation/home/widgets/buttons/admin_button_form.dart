import 'package:apptest/presentation/routes/router.gr.dart';
// ignore: depend_on_referenced_packages
import 'package:auto_route/auto_route.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';

class AdminButtonForm extends StatelessWidget {
  const AdminButtonForm({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final double mediaHeight = MediaQuery.of(context).size.height;
    return TextButton(
      onPressed: () {
        context.router.push(const UserManageRoute());
      },
      child: InkWell(
        child: Card(
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: EdgeInsets.all(8.0 / mediaHeight * mediaHeight),
            child: SizedBox(
              child: Column(
                children: [
                  Icon(
                    Icons.people,
                    size: 60 / mediaHeight * mediaHeight,
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
