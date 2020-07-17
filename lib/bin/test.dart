import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:WebView(
      initialUrl: 'https://fiverr.com',
      javascriptMode: JavascriptMode.unrestricted,),
    );
  }
}
