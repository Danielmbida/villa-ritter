import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class PrensentButtonForm extends StatelessWidget {
  const PrensentButtonForm({
    Key? key,
    required this.user,
  }) : super(key: key);

  final User user;

  @override
  Widget build(BuildContext context) {
    final double mediaHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () {
        context.router.push(const ScanRoute());
      },
      child: Card(
        color: Theme.of(context).primaryColor,
        child: SizedBox(
          child: Column(
            children: [
              Icon(
                Icons.qr_code,
                size: mediaHeight * .090,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
