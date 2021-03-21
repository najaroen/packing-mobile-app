import 'package:flutter/material.dart';
AppBar detailAppBar({context}) {
  return  AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      color: Colors.white,
      onPressed: (){
        Navigator.pop(context);
      },
    ),
    actions: [
      IconButton(
          icon: Image.asset("assets/icons/share.png", color: Colors.white, width: 20, height: 20,),
          onPressed: (){

          }),
      IconButton(
          icon: Image.asset("assets/icons/more.png", color: Colors.white, width: 20, height: 20,),
          onPressed: (){})
    ],
  );
}