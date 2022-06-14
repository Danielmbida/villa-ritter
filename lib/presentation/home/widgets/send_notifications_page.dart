// ignore_for_file: avoid_void_async
import 'dart:convert';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;

class SendNotificationsPage extends StatefulWidget {
  const SendNotificationsPage({
    Key? key,
    required this.listToken,
  }) : super(key: key);

  final List<String> listToken;

  @override
  State<SendNotificationsPage> createState() => _SendNotificationsPageState();
}

class _SendNotificationsPageState extends State<SendNotificationsPage> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController bodyController = TextEditingController();
  String? mtoken = " ";
  AndroidNotificationChannel channel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    importance: Importance.high,
  );

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.notification_page_app_bar,
          ),
          backgroundColor: const Color(0xff20544c),
        ),
        body: Container(
          color: const Color.fromARGB(216, 32, 84, 76),
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 56.0, horizontal: 16),
              child: SingleChildScrollView(
                child: Card(
                  elevation: 8,
                  color: Colors.white70,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        AppLocalizations.of(context)!
                            .notification_form_title_string,
                        style: const TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 36),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: TextFormField(
                          decoration: _textFormFieldDecoration(
                            AppLocalizations.of(context)!
                                .notification_title_label_string,
                          ),
                          cursorColor: const Color(0xff20544c),
                          controller: titleController,
                        ),
                      ),
                      const SizedBox(height: 48),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: TextFormField(
                          decoration: _textFormFieldDecoration(
                            AppLocalizations.of(context)!
                                .notification_body_label_string,
                          ),
                          cursorColor: const Color(0xff20544c),
                          maxLines: 3,
                          controller: bodyController,
                        ),
                      ),
                      const SizedBox(height: 48),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: const Color(0xff20544c),
                        ),
                        onPressed: () {
                          if (titleController.text.isEmpty ||
                              bodyController.text.isEmpty) {
                            FlushbarHelper.createError(
                              title: AppLocalizations.of(context)!
                                  .notification_flushbar_title_string,
                              message: AppLocalizations.of(context)!
                                  .notification_flushbar_content_string,
                              duration: const Duration(seconds: 3),
                            ).show(context);
                          } else {
                            _sendMessage(
                              bodyController.text,
                              titleController.text,
                              widget.listToken,
                            );
                            FocusScope.of(context).unfocus();
                            titleController.clear();
                            bodyController.clear();
                          }
                        },
                        child: Text(
                          AppLocalizations.of(context)!
                              .notification_button_string,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  InputDecoration _textFormFieldDecoration(String labelText) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: const TextStyle(
        color: Color(0xff20544c),
      ),
      filled: true,
      fillColor: Colors.white54.withOpacity(0.5),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: Color(0xff20544c),
        ),
      ),
    );
  }

  void _sendMessage(String body, String title, List<String> tokens) async {
    try {
      await http.post(
        Uri.parse('https://fcm.googleapis.com/fcm/send'),
        headers: <String, String>{
          'Content-Type': 'application/json',
          'Authorization':
              'key=AAAA96RIpWY:APA91bFECHLQ8blOhZVsDGM0qbvtmlceFY4k2nxdo0ZMmDxi6q-hVqLZmtGodLlHD3f5CABMgrjL155E0y2taksozWWsk7J7VdoAa6bU4Lbcrulu5uUES7IWDZCmSQkskIsYS9LUaU5j',
        },
        body: jsonEncode(
          <String, dynamic>{
            'notification': <String, dynamic>{
              'body': body,
              'title': title,
            },
            'priority': 'high',
            'data': <String, dynamic>{
              'click_action': 'FLUTTER_NOTIFICATION_CLICK',
              'id': '1',
              'status': 'done'
            },
            "registration_ids": tokens
          },
        ),
      );
    } catch (e) {
      if (kDebugMode) {
        print("error push notification");
      }
    }
  }
}
