// ignore_for_file: depend_on_referenced_packages

import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ResetConfirmDialog extends StatelessWidget {
  const ResetConfirmDialog({
    Key? key,
    required this.message,
    required this.resetContext,
  }) : super(key: key);
  final String message;
  final BuildContext resetContext;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: MediaQuery.of(context).size.height * 0.20,
        child: Column(
          children: [
            Text(message),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      side: const BorderSide(color: Colors.white),
                    ),
                  ),
                  onPressed: () {
                    context.router.push(const SignInRoute());
                  },
                  child: const Text(
                    "Ok",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
