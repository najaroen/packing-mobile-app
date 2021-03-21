import 'package:flutter/material.dart';

import '../../../constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Image.asset("assets/icons/menu.png", width: 20, height: 20,),
      onPressed: () {},
    ),
    title: RichText(
      text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(fontWeight: FontWeight.bold),
          children: [
            TextSpan(
                text: "Junk", style: TextStyle(color: kSecondaryColor)),
            TextSpan(text: "Food", style: TextStyle(color: kPrimaryColor))
          ]),
    ),
    actions: [
      IconButton(
          icon: Image.asset("assets/icons/notification.png"),
          onPressed: () {})
    ],
  );
}