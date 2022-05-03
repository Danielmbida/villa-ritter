import 'package:apptest/application/user_actor/user_actor_bloc.dart';
import 'package:apptest/domain/auth/user.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kt_dart/collection.dart';
import 'package:url_launcher/url_launcher.dart';

class Const {
  ///Mise en forme de la modal appellée
  ///quand il n y a plus de connexion
  static Future showNoInternetDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(35),
        ),
        content: SizedBox(
          height: MediaQuery.of(context).size.height * 0.25,
          child: Column(
            children: [
              Icon(
                Icons.wifi_off_outlined,
                size: MediaQuery.of(context).size.height * 0.12,
                color: Colors.grey,
              ),
              const Text('Vérifier votre connexion'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              SizedBox(
                height: 45,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    "Réessayer",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///Met la première lettre d'une string en majuscule
  static String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

  ///Affiche le message lorsque le téléphone
  ///n'a plus accès à internet
  static Center displayNotInternetState() {
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
          const Text(
            "Aucune connexion internet trouvée",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),
          ),
          const Text(
            "Veuillez vérifier votre connexion",
            style: TextStyle(
              fontSize: 17,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  ///Model pour l'affichage d'un utilisateur
  static Padding userInfoItem(
      String field, String infos, IconData icon, Color iconColor) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.white70),
              borderRadius: BorderRadius.circular(100),
            ),
            elevation: 5,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Icon(
                icon,
                color: iconColor,
                size: 25,
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                field,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 15,
                  color: Colors.grey[500],
                ),
              ),
              Text(
                infos,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  ///Permet l'ouverture  d'applications avec l'url
  static Future<String> launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        universalLinksOnly: true,
      );
    } else {
      throw 'Could not launch $url';
    }
    return url;
  }



  ///Cette méthode afficher les informations
  ///de l'utilisateur sur lequel on à clické
  ///dans une modal
  static Future showUserInfoDialog(BuildContext context, User user) {
    return showGeneralDialog(
      context: context,
      barrierDismissible:
          false, // should dialog be dismissed when tapped outside
      barrierLabel: "Modal", // label for barrier
      transitionDuration: const Duration(
        milliseconds: 600,
      ), // how long it takes to popup dialog after button click
      transitionBuilder: (context, animation, secondaryAnimation, widget) {
        return SlideTransition(
          position: Tween(
            begin: const Offset(0, 1),
            end: const Offset(0, 0),
          ).animate(animation),
          child: Opacity(
            opacity: animation.value,
            child: Scaffold(
              backgroundColor: Colors.white,
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
                        color: Colors.lightBlue,
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
                                          MediaQuery.of(context).size.width *
                                              0.10,
                                    ),
                                  ),
                                  Text(
                                    user.name,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.10,
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
                          height:
                              MediaQuery.of(context).size.height * 0.025, //20
                        ),
                        userInfoItem(
                          "Nom",
                          user.name,
                          Icons.person_outline_outlined,
                          Colors.yellow,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        InkWell(
                          onTap: () {
                            launchURL("mailto://${user.email}");
                          },
                          child: userInfoItem(
                            "Email",
                            user.email,
                            Icons.email_outlined,
                            Colors.blue,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        userInfoItem(
                          "Date de naissance",
                          user.birthDate,
                          FontAwesomeIcons.birthdayCake,
                          Colors.pink,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.025,
                        ),
                        userInfoItem(
                          "Genre",
                          user.genre,
                          FontAwesomeIcons.transgenderAlt,
                          Colors.black,
                        ),
                      ],
                    ),
                    Expanded(
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.width * 0.07,
                        backgroundColor: Colors.blue,
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
      },
      pageBuilder: (context, _animation1, __animation2) {
        return const Text("");
      },
    );
  }

  ///Afficher la boite dialogue
  ///pour faire partir une pesonne de la villa
  static Future showFiredUserDialog(User user, int index, BuildContext context,
      AnimationController _controller) {
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        content: SizedBox(
          height: MediaQuery.of(context).size.height * 0.38,
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.19,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04, //30
              ),
              const Text(
                "Faire sortir",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.013, //10
              ),
              Text('Confirmer la sortie de ${user.name}'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          side: BorderSide(
                            color: Colors.grey[300]!,
                          ),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () => Navigator.pop(context, 'Annuler'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(
                          FontAwesomeIcons.solidTimesCircle,
                          color: Colors.grey,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Annuler',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          side: const BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      BlocProvider.of<UserActorBloc>(context).add(
                        UserActorEvent.left(
                          user.copyWith(present: false),
                        ),
                      );
                      _controller.stop();
                      Navigator.pop(context);
                      _controller.stop();
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(
                          FontAwesomeIcons.check,
                          color: Colors.white,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Confirmer',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
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

  ///Petite cercle avec le nombres de personnes
  ///dans la villa
  static Positioned nbUserCard(
      KtList<User> users, Animation<double> _animation) {
    return Positioned(
      bottom: 10,
      right: 10,
      child: RotationTransition(
        turns: _animation,
        child: CircleAvatar(
          backgroundColor: Colors.orange,
          radius: 20,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                users.size.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ///Le texte affiché quand il y a personne dans la villa
  static Container displayNobody(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/nobody.png"),
          fit: BoxFit.fitWidth,
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
    );
  }

  ///Afficher la boite dialogue
  ///pour vider toute la listes
  static Future showFiredAllUserDialog(
      KtList<User> users, BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        content: SizedBox(
          height: MediaQuery.of(context).size.height * 0.35,
          child: Column(
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 0.19,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              const Text(
                "Faire sortir",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.013,
              ),
              const Text('Confirmer la sortie pour tous'),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          side: BorderSide(
                            color: Colors.grey[300]!,
                          ),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () => Navigator.pop(context, 'Annuler'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(
                          FontAwesomeIcons.solidTimesCircle,
                          color: Colors.grey,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Annuler',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                          side: const BorderSide(
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                    ),
                    onPressed: () {
                      users.forEach((user) {
                        BlocProvider.of<UserActorBloc>(context).add(
                          UserActorEvent.left(
                            user.copyWith(present: false),
                          ),
                        );
                      });
                      Navigator.pop(context, 'Annuler');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Icon(
                          FontAwesomeIcons.check,
                          color: Colors.white,
                          size: 15,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          'Confirmer',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
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

  ///Modèle d'une card de la liste des utilisateurs
  static Padding userInfoCardItem(String state, User user, int index,
      BuildContext context, AnimationController _controller) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        child: Material(
          child: InkWell(
            onLongPress: () {
              state == "present"
                  ? Const.showFiredUserDialog(user, index, context, _controller)
                  : Const.showUserInfoDialog(context, user);
            },
            onTap: () {
              Const.showUserInfoDialog(context, user);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide(color: Colors.grey[300]!, width: 3),
                borderRadius: BorderRadius.circular(15),
              ),
              color: Colors.grey[200]!.withOpacity(0.9),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: CircleAvatar(
                            radius: state == "present" ? 40 : 25,
                            backgroundColor: Colors.white,
                            child: Icon(
                              FontAwesomeIcons.userAlt,
                              size: state == "present" ? 45 : 25,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Align(
                          child: Text(
                            user.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        const Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.navigate_next,
                            size: 40,
                            color: Colors.grey,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: MediaQuery.of(context).size.width * 0.25,
                          child: state == "present"
                              ? Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(width: 8),
                                    const Icon(
                                      FontAwesomeIcons.clock,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 10),
                                    if (user.genre != "Femme")
                                      const Text(
                                        "Arrivé à : ",
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      )
                                    else
                                      const Text(
                                        "Arrivée à : ",
                                        style: TextStyle(
                                          fontSize: 17,
                                        ),
                                      ),
                                    Text(
                                      user.hour,
                                      style: const TextStyle(
                                        fontSize: 17,
                                      ),
                                    ),
                                  ],
                                )
                              : const Text(""),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
