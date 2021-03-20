import 'package:flutter/material.dart';

import '../constants.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged<String> onChange;
  const SearchBox({this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: kSecondaryColor.withOpacity(0.32)
          )
      ),
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
            border: InputBorder.none,
            icon: Icon(Icons.search),
            hintText: "Search Here",
            hintStyle: TextStyle(color: kSecondaryColor)
        ),
      ),
    );
  }
}