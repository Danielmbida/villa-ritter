
// ignore: depend_on_referenced_packages
import 'package:apptest/presentation/villa/contact/contact_form.dart';
import 'package:apptest/presentation/villa/hours/display_table_hours_form.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactHoursPage extends StatefulWidget {
  @override
  _ContactHoursPageState createState() => _ContactHoursPageState();
}

class _ContactHoursPageState extends State<ContactHoursPage> {
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
        body: const TabBarView(
          children: [
            DisplayHoursForm(),
            ContactForm(),
          ],
        ),
      ),
    );
  }

}
