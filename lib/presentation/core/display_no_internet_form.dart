// ignore_for_file: depend_on_referenced_packages
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DisplayNoInternetForm extends StatelessWidget {
  const DisplayNoInternetForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AvatarGlow(
            glowColor: Colors.blueGrey,
            endRadius: 100.0,
            child: Material(
              elevation: 8.0,
              shape: const CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                radius: 50,
                child: const Icon(
                  Icons.wifi_off,
                  size: 60,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          Text(
            AppLocalizations.of(context)!.no_internet_string,
            style: const TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),
          ),
          Text(
            AppLocalizations.of(context)!.check_connexion_string,
            style: const TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
