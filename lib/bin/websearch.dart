import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class WebSearch extends StatefulWidget {
  final String title;

  WebSearch({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WebSearch();
  }
}

class _WebSearch extends State<WebSearch> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      appBar: AppBar(
//        title:Text ('WebViews'),
//      ),
      body: Builder(
        builder: (BuildContext context){
          return Container(
            child: WebView(
              initialUrl: 'https://www.fiverr.com/search/gigs?query=gigs&source=top-bar&search_in=everywhere&search-autocomplete-original-term=gigs',
              javascriptMode: JavascriptMode.unrestricted,

            ),
          );
        },
      ),
    );
  }
}
