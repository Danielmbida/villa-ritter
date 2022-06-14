// ignore_for_file: avoid_void_async

import 'dart:convert';

import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:http/http.dart' as http;
import 'package:kt_dart/collection.dart';

import 'package:apptest/application/token/user_token_watcher/user_token_bloc.dart';
import 'package:apptest/domain/token/token.dart';
import 'package:apptest/presentation/home/messaging_serivces.dart';

MessagingService _msgService = MessagingService();

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
  final TextEditingController ctrl = TextEditingController();
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
    return Scaffold(
      appBar: AppBar(title: const Text("Notifications")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Enter your message'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(controller: ctrl),
            ),
            ElevatedButton(
              onPressed: () {
                _sendMessage(ctrl.text, "titre", widget.listToken);
              },
              child: const Text("Send"),
            ),
          ],
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
