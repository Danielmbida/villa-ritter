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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    "assets/images/pouce.png",
                    height: 150,
                    width: 150,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Text(
                  "Lien de reinitialisation envoyé à $email",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Column(
                  children: [
                    const Text(
                      "Un lien permettant de réinitialiser votre mot de passe a été envoyé à votre email. Vérifiez votre boîte de reception et une fois le mot de passe changer, il vous sera possible de vous connecter à l'application",
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
      ),
    );
  }
}
