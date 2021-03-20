import 'package:flutter/material.dart';
import 'package:packingapp/components/serchBox.dart';
import 'categoryItem.dart';
import 'categoryList.dart';

class BodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(
          onChange: (value) {
            print(value);
          },
        ),
        CategoryList()
      ],
    );
  }
}



