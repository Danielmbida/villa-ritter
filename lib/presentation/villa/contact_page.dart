import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  String content = "";
  final List<String> firstHours = <String>[
    "Fermée",
    "14:00-18:00",
    "14:00-18:00",
    "Fermée",
    "14:00-18:00",
  ];
  final List<String> secondHours = <String>[
    "Fermée",
    "19:30-23:00",
    "19:30-23:00",
    "19:30-23:00",
    "19:30-00:00",
  ];
  final List<String> days = <String>[
    "Lundi",
    "Mardi",
    "Mercredi",
    "Jeudi",
    "Vendredi",
  ];
  final double tabTextSize = 30;
  final double imageHeight = 200;
  final int nbTab = 2;
  final String textHour = "Horaire";
  final String textContact = "Contact";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: nbTab,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Text(
                textHour,
                style: TextStyle(
                  fontSize: tabTextSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                textContact,
                style: TextStyle(
                  fontSize: tabTextSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          flexibleSpace: Image.asset(
            "assets/images/4.jpg",
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
            height: imageHeight,
          ),
        ),
        body: TabBarView(
          children: [
            _hoursDisplay(context),
            _contactDisplay(context),
          ],
        ),
      ),
    );
  }

  ///Affichage de l'horaire
  ///pour tous les jours de la semaines
  SizedBox _hoursCard(BuildContext context) {
    final double mediaWidth = MediaQuery.of(context).size.width;
    final double mediaHeight = MediaQuery.of(context).size.height;

    final double listHeight = 617 / mediaHeight * mediaHeight;
    final double listWidth = mediaWidth;
    final double cardHoursW = 395 / mediaWidth * mediaWidth;
    final double cardHoursH = 77 / mediaHeight * mediaHeight; //95
    const double iconSize = 30;
    final double iconPosTop = mediaHeight * 0.031;
    final double iconPosRight = 30 / mediaWidth * mediaWidth;
    const double circleAvRadius = 50;
    const double textDaySize = 20;
    const Color circleColor = Color(0xFF243784);
    const double textHourSize = 20;
    const double leftSideCard = 40;
    const double rightSideCard = 30;
    final Color? textColor = Colors.grey[600];
    const Color textDayColor = Colors.white;

    return SizedBox(
      width: listWidth,
      height: listHeight,
      child: ListView.builder(
        // separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: days.length,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
                child: Stack(
                  children: [
                    Positioned(
                      child: SizedBox(
                        width: cardHoursW,
                        height: cardHoursH,
                        child: Card(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(leftSideCard),
                              bottomLeft: Radius.circular(leftSideCard),
                              topRight: Radius.circular(rightSideCard),
                              bottomRight: Radius.circular(rightSideCard),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  firstHours[index],
                                  style: TextStyle(
                                    fontSize: textHourSize,
                                    fontWeight: FontWeight.bold,
                                    color: textColor,
                                  ),
                                ),
                                Text(
                                  secondHours[index],
                                  style: TextStyle(
                                    fontSize: textHourSize,
                                    fontWeight: FontWeight.bold,
                                    color: textColor,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: iconPosRight,
                      top: iconPosTop,
                      child: Icon(
                        Icons.query_builder,
                        size: iconSize,
                        color: textColor,
                      ),
                    ),
                    CircleAvatar(
                      radius: circleAvRadius,
                      backgroundColor: circleColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          days[index],
                          style: TextStyle(
                            fontSize: textDaySize,
                            fontWeight: FontWeight.bold,
                            color: textDayColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  ///Ouverture de la boite
  ///de dialogue quand on click
  ///sur l'icon d'info
  Future _infoHoursDialog(BuildContext context) {
    const String titleText = "Heures d'ouvertures";
    const String messageText =
        "Dès 20h45 La Villa Ritter est réservée aux jeunes de 15 ans et plus ";
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          content: SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  height: 120,
                  width: 150,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  titleText,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  messageText,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                            side: BorderSide(
                              color: Colors.grey[300]!,
                            ),
                          ),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                      ),
                      onPressed: () => Navigator.pop(context, 'Ok'),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Text(
                            'Ok',
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
        );
      },
    );
  }

  ///Fait appel à la méthode _hoursCard
  ///pour afficher l'horaire
  ///et la boit de dialogue via
  ///la méthode _infoHoursDialog
  Column _hoursDisplay(BuildContext context) {
    const double iconSize = 40;
    const Color iconColor = Colors.red;
    final mediaWidth = MediaQuery.of(context).size.width;
    final mediaHeight = MediaQuery.of(context).size.height;
    final paddHorizontal = 20 / mediaWidth * mediaWidth;
    return Column(
      children: [
        SizedBox(height: 10 / mediaHeight * mediaHeight),
        _hoursCard(context),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: paddHorizontal),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  _infoHoursDialog(context);
                },
                child: const Icon(
                  Icons.info,
                  size: iconSize,
                  color: iconColor,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  ///Permet l'ouverture des liens des application
  // ignore: always_declare_return_types
  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        universalLinksOnly: true,
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  ///Affichage de l'adresse
  ///avec le click qui ouvre le gps
  Column _addrDisplay(BuildContext context) {
    const double iconSize = 40;
    const Color iconColor = Colors.black;
    final Color? textColor = Colors.grey[600];
    const String textAdress = "Adresse";
    const String addre = "Villa\nFaubourg du jura 36\n2502 Bienne";
    const double textSize = 20;
    const double separedSize = 20;

    return Column(
      children: [
        GestureDetector(
          onTap: () async {
            _launchURL(
              "https://www.google.com/maps/place/Fbg+du+Jura+36,+2502+Bienne,+Suisse/@47.143048,7.248869,14z/data=!4m5!3m4!1s0x478e1eb3a3b72847:0xd2ff59e7143507cc!8m2!3d47.1442591!4d7.2499835?hl=fr-FR",
            );
          },
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
              Text(
                addre,
                style: TextStyle(
                  color: textColor,
                  fontSize: textSize,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: separedSize),
        _imgAddrDisplay(context),
      ],
    );
  }

  ///Affichage de l'image pour l'adresse
  Container _imgAddrDisplay(BuildContext context) {
    final mediaHeight = MediaQuery.of(context).size.height;
    final double imgHeight = 200 / mediaHeight * mediaHeight;
    const double borderWidth = 4;
    return Container(
      height: imgHeight,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade300,
          width: borderWidth,
        ),
      ),
      child: Image.asset(
        "assets/images/img_addr.PNG",
        fit: BoxFit.fitWidth,
        height: imgHeight,
      ),
    );
  }

  ///Affichage des icon téléphone et email
  ///avec l'ouverture lorque l'on click sur l'icon
  Column _phoneMailDisplay(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    final mediaHeight = MediaQuery.of(context).size.height;
    final double iconSize = 30 / mediaWidth * mediaWidth;
    final double textSize = 20 / mediaWidth * mediaWidth;
    const Color iconColor = Colors.black;
    final Color? textColor = Colors.grey[600];
    const String phonNumber = "032 323 89 55";
    const String mailText = "villaritter@bluewin.ch";
    return Column(
      children: [
        GestureDetector(
          onTap: () async {
            _launchURL("tel://0323288955");
          },
          child: Column(
            children: [
              Icon(
                FontAwesomeIcons.phoneAlt,
                size: iconSize,
                color: iconColor,
              ),
              Text(
                phonNumber,
                style: TextStyle(
                  color: textColor,
                  fontSize: textSize,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20 / mediaHeight * mediaHeight),
        GestureDetector(
          onTap: () async {
            _launchURL("mailto://villaritter@bluewin.ch");
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
      ],
    );
  }

  ///affichage des icons insta et snap
  ///et ouvre les application insta et snap
  Padding _footerDisplay(BuildContext context) {
    final mediaWidth = MediaQuery.of(context).size.width;
    final mediaHeight = MediaQuery.of(context).size.height;
    final double iconSize = 45 / mediaWidth * mediaWidth;
    final double ph = 30 / mediaHeight * mediaHeight;
    final double pw = 30 / mediaWidth * mediaWidth;
    const Color iconColor = Colors.black;
    final double separedSize = 20 / mediaWidth * mediaWidth;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ph,
        vertical: pw,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () async {
              const url = "https://www.instagram.com/villabnc/";
              _launchURL(url);
            },
            child: Icon(
              FontAwesomeIcons.instagram,
              color: iconColor,
              size: iconSize,
            ),
          ),
          SizedBox(width: separedSize),
          GestureDetector(
            onTap: () async {
              const url = "https://www.snapchat.com/add/k.gianoli/";
              _launchURL(url);
            },
            child: Icon(
              FontAwesomeIcons.snapchat,
              color: iconColor,
              size: iconSize,
            ),
          )
        ],
      ),
    );
  }

  ///Affichage du contenue de la page contact
  ///on y trouve l'appel des méthodes
  ///pour afficher l'adresse
  ///pour afficher le numéros de tel
  ///pour afficher les icons insta et snap
  Center _contactDisplay(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                _addrDisplay(context),
                const SizedBox(height: 20),
                _phoneMailDisplay(context),
              ],
            ),
          ),
          _footerDisplay(context),
        ],
      ),
    );
  }
}
