import 'package:flutter/material.dart';
import 'package:packingapp/screen/detail/detail-screen.dart';

class BottomNavBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20)
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0,-7),
                blurRadius: 33,
                color: Color(0xFF6DAED9).withOpacity(0.13)
            )
          ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: Image.asset("assets/icons/house.png", width: 22, height: 22,), onPressed: (){}),
          IconButton(icon: Image.asset("assets/icons/heart (1).png", width: 22, height: 22), onPressed: (){}),
          IconButton(icon: Image.asset("assets/icons/box.png", width: 22, height: 22), onPressed: (){}),
          IconButton(icon: Image.asset("assets/icons/man.png", width: 22, height: 22), onPressed: (){})
        ],
      ),
    );
  }
}