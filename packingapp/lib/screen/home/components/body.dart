import 'package:flutter/material.dart';
import 'package:packingapp/components/serchBox.dart';
import 'categoryList.dart';
import 'discountCard.dart';
import 'itemList.dart';

class BodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBox(
          onChange: (value) {
            print(value);
          },
        ),
        CategoryList(),
        ItemList(),
        DisCountCard()
      ],
    );
  }
}


