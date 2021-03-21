import 'package:flutter/material.dart';

import '../../../constants.dart';

class DisCountCard extends StatelessWidget {
  const DisCountCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Offers & Discounts",
              style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              width: double.infinity,
              height: 166,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/icons/doublefest-banner.jpg"))),
              child: DecoratedBox(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      // end: Alignment.centerLeft,
                        colors: [
                          Color(0xFFFF961F).withOpacity(0.7),
                          kPrimaryColor.withOpacity(0.7)
                        ])),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Image.asset(
                            "assets/icons/mcdonalds.png",
                            color: Colors.white,
                            width: 80,
                            height: 80,
                          )),
                      Expanded(
                          child: RichText(
                            text: TextSpan(
                                style: TextStyle(color: Colors.white),
                                children: [
                                  TextSpan(
                                      text: "Get Discount of \n",
                                      style: TextStyle(fontSize: 16)),
                                  TextSpan(
                                      text: "70% \n",
                                      style: TextStyle(fontSize: 43, fontWeight: FontWeight.bold)),
                                  TextSpan(
                                      text: "spacial pack util 30 april 2021",
                                      style: TextStyle(fontSize: 10))
                                ]),
                          ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}