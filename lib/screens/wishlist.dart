import 'package:ajio/screens/widgets.dart';
import 'package:flutter/material.dart';

class WishListScreen extends StatelessWidget {
  WishListScreen({Key? key});
  final wishList = [
    WishlistItem(
        'assets/wh1.jpg', 'Lee-Cooper', 'Textured Lace-UP Derby Shoes', 350, 449, 22),
    WishlistItem(
        'assets/wh2.jpg', 'LaFille', 'Set of Croc-Embossed Sholder Bags', 35000, 45000, 12),
   WishlistItem(
    'assets/wh4.jpg', 'The Pari', 'Stone-Studed Layered Necklace', 4599, 5999, 25),
    WishlistItem(
        'assets/wh3.jpg', 'Pebble', 'Elite Pro Over-Ear Wirless HeadPhone', 350, 449, 22),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wishlist'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          Icon(Icons.shopping_bag_outlined)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(3, 5, 0, 8),
                child: Text(
                  'My Wishlist',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: wishList.length,
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 4/ 10,
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 0),
                itemBuilder: (context, index) {
                  return wishList[index];
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}