import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
//import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'dart:async';

class WebHome extends StatefulWidget {
  final String title;

  WebHome({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WebHome();
  }
}

class _WebHome extends State<WebHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title:Text ('WebViews'),
//      ),
      body: Builder(
        builder: (BuildContext context){
          return Container(
//            child:LiquidPullToRefresh(
              	// key if you want to add
//              onRefresh: _handleRefresh,	// refresh callback
              child:WebView(
              initialUrl: 'https://fiverr.com',
              javascriptMode: JavascriptMode.unrestricted,),

//            ),
//          ),
          );
        },
      ),
    );
  }
}
