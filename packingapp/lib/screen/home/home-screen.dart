import 'components/body.dart';
import 'package:flutter/material.dart';
import 'components/buttomNavBar.dart';
import 'components/homeAppBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavBar(),
      body: BodyScreen(),
    );
  }
}


