import 'package:flutter/material.dart';
import 'package:packingapp/screen/detail/detail-screen.dart';
import 'itemCard.dart';

class ItemList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:  Row(
        children: [
          ItemCard(onPress: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailScreen();
            }));
          }, shopName: "Maki Burger", title: "Burger and Beer", pathImg: "assets/icons/fast-food.png"),
          ItemCard(shopName: "ยายณี", title: "ไก่ทอด", pathImg: "assets/icons/chicken-wings.png"),
          ItemCard(shopName: "ป้าเต๊ะ", title: "น้ำดื่ม", pathImg: "assets/icons/soft-drink.png"),
          ItemCard(shopName: "เจ๊จอย", title: "อาหารคลีน", pathImg: "assets/icons/diet.png"),
        ],
      ),
    );
  }

}