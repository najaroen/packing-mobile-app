import 'package:flutter/material.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, pathImg;
  final Function onPress;
  const ItemCard({Key key, this.title, this.shopName, this.pathImg, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 20,
                color: Color(0xFFB0CCE1).withOpacity(0.32))
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPress,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(0.13),
                      shape: BoxShape.circle
                  ),
                  child: Image.asset(pathImg, width: size.width*0.18),
                ),
                Text(title),
                SizedBox(height: 10),
                Text(shopName,
                    style: TextStyle(fontSize: 12))
              ],
            ),
          ),
        ),
      ),
    );
  }
}