import 'package:flutter/material.dart';
import 'package:packingapp/constants.dart';
import 'package:packingapp/screen/home/home-screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food !',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
        textTheme: TextTheme(
          body1: TextStyle(color: kSecondaryColor),
          body2: TextStyle(color: kSecondaryColor)
        )
      ),
      home: HomeScreen(),
    );
  }
}

