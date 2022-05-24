// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/presentation/villa/contact/contact_form.dart';
import 'package:apptest/presentation/villa/hours/display_table_hours_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ContactHoursPage extends StatefulWidget {
  @override
  _ContactHoursPageState createState() => _ContactHoursPageState();
}

class _ContactHoursPageState extends State<ContactHoursPage> {
  final double tabTextSize = 30;
  final double imageHeight = 200;
  final int nbTab = 2;

  @override
  Widget build(BuildContext context) {
    final String textHour = AppLocalizations.of(context)!.hourly_string;
    final String textContact = AppLocalizations.of(context)!.contact_string;
    return SafeArea(
      child: DefaultTabController(
        length: nbTab,
        child: Scaffold(
          backgroundColor: Colors.green.shade100,
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
      ),
    );
  }
}
