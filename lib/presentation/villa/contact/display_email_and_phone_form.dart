// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/presentation/core/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DisplayEmainAndPhoneForm extends StatelessWidget {
  const DisplayEmainAndPhoneForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    final double iconSize = 30 / mediaWidth * mediaWidth;
    final double textSize = 20 / mediaWidth * mediaWidth;
    const Color iconColor = Colors.black;
    final Color? textColor = Colors.grey[600];
    const String phonNumber = "032 323 89 55";
    const String mailText = "villaritter@bluewin.ch";
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: mediaWidth * 0.08),
        child: Column(
          children: [
            GestureDetector(
              onTap: () async {
                UrlLauncher.launchURL("tel://0323288955");
              },
              child: Column(
                children: [
                  Icon(
                    FontAwesomeIcons.phoneAlt,
                    size: iconSize,
                    color: iconColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      phonNumber,
                      style: TextStyle(
                        color: textColor,
                        fontSize: textSize,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () async {
                  UrlLauncher.launchURL("mailto://villaritter@bluewin.ch");
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.mail,
                      size: iconSize,
                      color: iconColor,
                    ),
                    Text(
                      mailText,
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: textSize,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
