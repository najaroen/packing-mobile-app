import 'package:flutter/material.dart';
class ItemImages extends StatelessWidget {
  final String imgScr;

  const ItemImages({Key key, this.imgScr}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Image.asset(
          imgScr,
          height: size.height * 0.25,
          width: double.infinity,
          fit: BoxFit.contain,
        )
      ],
    );
  }
}