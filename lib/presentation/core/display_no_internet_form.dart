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
          const AvatarGlow(
            glowColor:  Color(0xff20544c),
            endRadius: 100.0,
            child: Material(
              elevation: 8.0,
              shape: CircleBorder(),
              child: CircleAvatar(
                backgroundColor: Color(0xff20544c),
                radius: 50,
                child: Icon(
                  Icons.wifi_off,
                  size: 60,
                  color: Colors.white,
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
