import 'package:ajio/screens/wishlist.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        }, icon: Icon(Icons.close)),
        actions: [IconButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext)=>WishListScreen()));
        }, icon:Icon(Icons.favorite_border_outlined))],
      ),
    );
  }
}