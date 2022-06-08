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
    return Stack(
      children:  [
        Align(
          alignment: Alignment.topCenter,
          child: Positioned(
            top: MediaQuery.of(context).size.height * .002,
            child: const DisplayAddressForm(),
          ),
        ),
         Positioned(
          bottom: MediaQuery.of(context).size.height * .075,
          left: MediaQuery.of(context).size.width* .20,
          child: const DisplayEmailAndPhoneForm(),
        ),
      ],
    );
  }
}
