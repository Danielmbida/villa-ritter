// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/presentation/core/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterForm extends StatelessWidget {
  const FooterForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    final double iconSize = 45 / mediaWidth * mediaWidth;
    const Color iconColor = Colors.black;
    return Expanded(
      child: SizedBox(
        width: mediaWidth,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () async {
                  const url = "https://www.instagram.com/villabnc/";
                  UrlLauncher.launchURL(url, "instagram://user?username=villabnc");
                },
                child: Icon(
                  FontAwesomeIcons.instagram,
                  color: iconColor,
                  size: iconSize,
                ),
              ),
              // const SizedBox(width: 10),
              // GestureDetector(
              //   onTap: () async {
              //     const url = "https://www.snapchat.com/add/k.gianoli/";
              //     UrlLauncher.launchURL(url);
              //   },
              //   child: Icon(
              //     FontAwesomeIcons.snapchat,
              //     color: iconColor,
              //     size: iconSize,
              //   ),
              // ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
