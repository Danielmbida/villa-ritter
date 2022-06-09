// ignore_for_file: deprecated_member_use

import 'package:apptest/presentation/core/url_launcher.dart';
import 'package:apptest/presentation/routes/router.gr.dart';
// ignore: depend_on_referenced_packages
import 'package:auto_route/auto_route.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SpeedDialForm extends StatelessWidget {
  const SpeedDialForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      childrenButtonSize: 60,
      spaceBetweenChildren: 15,
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: const IconThemeData(size: 35.0),
      renderOverlay: false, //change background of page
      curve: Curves.ease,
      tooltip: 'Réseaux et horaire',
      backgroundColor: Colors.grey.shade300,
      foregroundColor: Colors.black,
      animationSpeed: 450, //milliseconds
      children: [
        _speedDialChild(Colors.blue, "villa", context),
        _speedDialChild(Colors.green, "phone", context),
        _speedDialChild(Colors.red, "youtube", context),
        _speedDialChild(null, "insta", context),
      ],
    );
  }

  ///Cette méthode en place les icon
  ///dans le speedial (réseux)
  SpeedDialChild _speedDialChild(
    Color? iconColor,
    String iconName,
    BuildContext context,
  ) {
    return SpeedDialChild(
      child: iconName == "insta"
          ? Image.asset(
              "assets/images/logo_insta.png",
              height: 40,
              width: 40,
            )
          : Icon(
              iconName == "youtube"
                  ? FontAwesomeIcons.youtube
                  : iconName != "villa"
                      ? FontAwesomeIcons.solidContactBook
                      : FontAwesomeIcons.infoCircle,
              color: iconColor,
            ),
      backgroundColor: Colors.grey.shade300,
      onTap: () {
        _networkAction(iconName, context);
      },
    );
  }

  ///Cette méthode exécute l'action
  ///Correspondant à l'icon du menu clické
  Future<String> _networkAction(String iconName, BuildContext context) async {
    switch (iconName) {
      case "insta":
        UrlLauncher.launchURL(
          "https://www.instagram.com/villabnc",
          "instagram://user?username=villabnc",
        );
        break;
      case "youtube":
        UrlLauncher.launchURL(
          "https://www.youtube.com/user/villaritterbienne",
          "youtube://user?username=villaritterbienne",
        );
        break;
      case "villa":
        UrlLauncher.launchURL("https://www.villa-ritter.ch/", "");
        break;
      case "phone":
        context.router.push(
          const ContactHoursRoute(),
        );
        break;
    }
    return iconName;
  }
}
