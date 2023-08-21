import 'package:flutter/material.dart';
import 'package:orangeapp/screens/accountscreen.dart';
import 'package:orangeapp/screens/fingerprinnt.dart';
import 'package:orangeapp/screens/loginscreen.dart';
import 'package:orangeapp/screens/notifyscreen.dart';
import 'package:orangeapp/screens/profilescreen.dart';

void main() {
  runApp(
    Directionality(
      textDirection: TextDirection.ltr,
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Profile",
      theme: ThemeData(),
      home: Fingerprinnt(),
    );
  }
}

