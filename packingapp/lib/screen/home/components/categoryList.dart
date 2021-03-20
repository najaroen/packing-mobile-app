import 'package:flutter/material.dart';

import 'categoryItem.dart';class CategoryList extends StatelessWidget {
  const CategoryList({ Key key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryItem(title: "Combo meal", isActive: true, press: () {}),
            CategoryItem(title: "Chicken", press: () {}),
            CategoryItem(title: "Beverages", press: () {}),
            CategoryItem(title: "Snack", press: () {}),
            CategoryItem(title: "Street food", press: () {})
          ],
        ));
  }
}
