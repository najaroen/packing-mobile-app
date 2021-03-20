import 'package:flutter/material.dart';

import '../../../constants.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final Function press;
  const CategoryItem({Key key, this.isActive = false, this.press, this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: press,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            children: [
              Text(
                title,
                style: isActive
                    ? TextStyle(color: kTextColor, fontWeight: FontWeight.bold)
                    : TextStyle(fontSize: 12),
              ),
              if (isActive)
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  height: 3,
                  width: 22,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(10)),
                )
            ],
          )),
    );
  }
}