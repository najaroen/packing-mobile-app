import 'package:flutter/material.dart';
import 'package:packingapp/constants.dart';
import 'components/detailAppBar.dart';
import 'components/itemImages.dart';
import 'components/itemPriceRating.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailAppBar(context: context),
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        ItemImages(
          imgScr: "assets/icons/pngegg.png",
        ),
        Expanded(child: ItemInfo())
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(30)),
      ),
      child: Column(
        children: [
          shopName(name: "Maki Burger"),
          TitlePriceRating(name: "Maki burger", price: 399, numberOfReviewer: 1922, onRatingChanged: (value){print(value);}, rating: 3.5,),
          Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
          style: TextStyle(height:1.5 )
          ),
          SizedBox(height: size.height * 0.1),
          Container(
            padding: EdgeInsets.all(20),
            width: size.width * 0.8,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.shopping_bag, color: Colors.white,),
                SizedBox(width: 10,),
                Text("Order now",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }
}


Row shopName({String name}) {
  return Row(
    children: [
      Icon(
        Icons.location_on,
        color: kSecondaryColor,
      ),
      SizedBox(
        width: 10,
      ),
      Text(name)
    ],
  );
}


