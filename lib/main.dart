import 'package:flutter/material.dart';
import 'package:webappisb/bin/splash_screen.dart';
import '';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
