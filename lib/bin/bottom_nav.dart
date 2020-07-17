import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webappisb/bin/WebContact.dart';
//import 'package:webview_flutter/webview_flutter.dart';
import 'webhome.dart';
import 'websearch.dart';
import 'WebInfo.dart';

class BottomNavi extends StatefulWidget {
  @override
  _BottomNaviState createState() => _BottomNaviState();
}

class _BottomNaviState extends State<BottomNavi> {
//  final flutterWebviewPlugin = new FlutterWebviewPlugin();
  int _currentIndex = 3;
  final tabs = [
    WebHome(),
    WebSearch(),
    WebInfo(),
    WebContact(),
  ];
//    Center (child: Text('Home')),
//    Center (child: Text('Search')),
//    Center (child: Text('Info')),
//    Contact(),
//  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(Icons.info),
              title: Text('Info'),
              backgroundColor: Colors.transparent),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              title: Text('Contact'),
              backgroundColor: Colors.transparent),
        ],
        onTap: (index){
          setState(() {
//            flutterWebviewPlugin.reload();

            _currentIndex = index;
          });
        },


      ),
      body: tabs [_currentIndex],
//      child: Text("Bottom Nav Page"),
    );
  }
}
