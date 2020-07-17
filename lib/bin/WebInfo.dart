import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
//import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
import 'dart:async';

class WebInfo extends StatefulWidget {
  final String title;

  WebInfo({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WebInfo();
  }
}

class _WebInfo extends State<WebInfo> {

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
