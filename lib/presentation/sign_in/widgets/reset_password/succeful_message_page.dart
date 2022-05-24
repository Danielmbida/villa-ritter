// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                  "${AppLocalizations.of(context)!.reset_mess_success_string}$email",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Column(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.sucess_message_string,
                      softWrap: false,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
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
                      child: Text(
                        AppLocalizations.of(context)!.connexion_page_string,
                        style: const TextStyle(fontSize: 18),
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
