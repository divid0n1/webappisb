//
//
//import 'package:flutter/cupertino.dart';
//
//class Message extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Container(child:Text("Hello"));
//  }
//}





import 'package:flutter/material.dart';

@immutable
class Message {
  final String title;
  final String body;

  const Message({
  @required this.title,
  @required this.body,
  });
}