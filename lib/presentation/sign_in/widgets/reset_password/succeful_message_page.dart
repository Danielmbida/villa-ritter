// ignore_for_file: depend_on_referenced_packages

import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SuccefulMessagePage extends StatelessWidget {
  const SuccefulMessagePage({
    Key? key,
    required this.email,
  }) : super(key: key);
  final String email;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Text(
                "Lien de reinitialisation envoyée",
                softWrap: false,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Column(
                children: [
                  //  Text(
                  //   "Un lien permettant de reinitialisé votre mot de passe à été envoyé à l'adresse $email",
                  //   style: const TextStyle(
                  //     fontSize: 20,
                  //     color: Colors.grey,
                  //   ),
                  // ),
                  // Text(
                  //   email,
                  //   style: const TextStyle(
                  //     fontSize: 20,
                  //     fontWeight: FontWeight.bold,
                  //     color: Colors.grey,
                  //   ),
                  // ),
                   Text(
                    "Un lien permettant de reinitialisé votre mot de passe à été envoyé à l'adresse $email,Vérifier votre boîte de reception et une fois le mot de passe changer, il vous sera possible de vous connecter à l'application",
                    softWrap: false,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  const Divider(),
                  ElevatedButton(
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
                      "Page de connexion",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
