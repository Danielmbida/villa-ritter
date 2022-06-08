// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/presentation/core/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DisplayAddressForm extends StatelessWidget {
  const DisplayAddressForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double iconSize = 40;
    const Color iconColor = Colors.black;
    final Color? textColor = Colors.grey[600];
    final String textAdress = AppLocalizations.of(context)!.address_string;
    const String addre = "Villa\nFaubourg du jura 36\n2502 Bienne";
    const double textSize = 20;

    return Column(
      children: [
        GestureDetector(
          onTap: () async {
            UrlLauncher.launchURL(
              "https://www.google.com/maps/place/Fbg+du+Jura+36,+2502+Bienne,+Suisse/@47.143048,7.248869,14z/data=!4m5!3m4!1s0x478e1eb3a3b72847:0xd2ff59e7143507cc!8m2!3d47.1442591!4d7.2499835?hl=fr-FR",
              "",
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Column(
              children: [
                const Icon(
                  Icons.place,
                  size: iconSize,
                  color: iconColor,
                ),
                Text(
                  textAdress,
                  style: TextStyle(
                    color: textColor,
                    fontSize: textSize,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    addre,
                    style: TextStyle(
                      color: textColor,
                      fontSize: textSize,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0.0),
          child: Container(
            // height: MediaQuery.of(context).size.height * .050,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade300,
              ),
            ),
            child: Image.asset(
              "assets/images/img_addr.PNG",
              // height: MediaQuery.of(context).size.height * 0.003,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ],
    );
  }
}
