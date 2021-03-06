import 'dart:html';

import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'message.dart';

class Messaging extends StatefulWidget {
  @override
  _MessagingState createState() => _MessagingState();
}

class _MessagingState extends State<Messaging> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  final List<Message> messages=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
        final notification = message['notification'];
        setState(() {
          messages.add(Message(
            title: notification['title'],body: notification['body']));
        });
      },
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
      },
    );
    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(sound: true, badge: true, alert: true));
  }

  @override
  Widget build(BuildContext context) => ListView (
  children: messages.map(buildMessage).toList(),
  );
  Widget buildMessage(Message message) =>ListTile(
    title: Text(message.title),
    subtitle: Text(message.body),
  );
}

//
//import 'package:flutter/cupertino.dart';
//
//class Message extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(child:Text("Hello"));
//  }
//}
