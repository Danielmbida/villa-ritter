// ignore_for_file: depend_on_referenced_packages
import 'package:apptest/presentation/villa/contact/display_address_form.dart';
import 'package:apptest/presentation/villa/contact/display_email_and_phone_form.dart';
import 'package:flutter/material.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: const [
                DisplayAddressForm(),
                DisplayEmainAndPhoneForm(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
