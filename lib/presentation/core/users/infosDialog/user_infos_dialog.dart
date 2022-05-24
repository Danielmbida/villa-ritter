// ignore_for_file: depend_on_referenced_packages

import 'package:apptest/domain/auth/user.dart';
import 'package:apptest/presentation/core/url_launcher.dart';
import 'package:apptest/presentation/core/users/infosDialog/user_infos_item_form.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserInfosDialog extends StatelessWidget {
  const UserInfosDialog({
    Key? key,
    required this.animation,
    required this.user,
  }) : super(key: key);

  final Animation<double> animation;
  final User user;

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween(
        begin: const Offset(0, 1),
        end: const Offset(0, 0),
     
      ).animate(animation),
      child: Opacity(
        opacity: animation.value,
        child: Scaffold(
          backgroundColor: Colors.white70,
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.23,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white70),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(130),
                      ),
                    ),
                    color: Theme.of(context).primaryColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                          icon: const Icon(
                            Icons.close,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Infos sur",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.10,
                                ),
                              ),
                              Text(
                                user.name,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025, //20
                    ),
                    UserInfoItemForm(
                      field: "Nom",
                      infos: user.name,
                      icon: Icons.person_outline_outlined,
                      iconColor: Colors.yellow,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    InkWell(
                      onTap: () {
                        UrlLauncher.launchURL("mailto://${user.email}");
                      },
                      child: UserInfoItemForm(
                        field: "Email",
                        infos: user.email,
                        icon: Icons.email_outlined,
                        iconColor: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    UserInfoItemForm(
                      field: "Date de naissance",
                      infos: user.birthDate,
                      icon: FontAwesomeIcons.birthdayCake,
                      iconColor: Colors.pink,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.025,
                    ),
                    UserInfoItemForm(
                      field: "Genre",
                      infos: user.genre,
                      icon: FontAwesomeIcons.transgenderAlt,
                      iconColor: Colors.black,
                    ),
                  ],
                ),
                Expanded(
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.07,
                    backgroundColor: Theme.of(context).primaryColor,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(
                        Icons.close,
                        size: MediaQuery.of(context).size.width * 0.06,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
