import 'package:flutter/material.dart';

class Categeories extends StatelessWidget {
   Categeories({super.key});

  final List<String> images = [
  'assets/644_964_19623jrm27-1-removebg-preview.png',
  'assets/Women_Ethnic_Wear_Pink_Printed_Georgette_Lehenga_Choli_Collection_2301.2_1024x1024-removebg-preview.png',
  'assets/Black-Floral-Gota-Girl-Suit-Set-with-Dupatta-and-Potli-Kidswear-House-of-Ekam_400x-removebg-preview.png',
  'assets/655x800-removebg-preview.png',
  'assets/13fb80a8aaadf541753bbf502d8e909f-removebg-preview.png',
  'assets/Beauty_1681207725-removebg-preview.png',
  'assets/Style-Accessories-for-Men-removebg-preview.png',
  'assets/modern-gift-ideas-281023-842-01-removebg-preview.png'
  
  ]; 

  final List<String>Name =[
    'Men',
    'Women',
    'Kids',
    'Jewellery',
    'Home & Lifestyle',
    'Beuty by Tira',
    'Accessories',
    'Gifting Guide'
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Shop By Category'),
        actions: [
        
          Icon(Icons.favorite_outline_sharp),
         SizedBox(width: 30,),
          Icon(Icons.shopping_bag_outlined)
        ],
      ),
       body: Stack(
         children: [
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2/1.5
            ),
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(10),
                
                // color: const Color.fromARGB(255, 235, 235, 235),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Image.asset(
                          images[index],
                          width: 90,
                          height: 90,
                        ),
                        
                        Text(
                          Name[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
            itemCount: images.length,
          ),
           SizedBox(height: 300,),
          Positioned(
            bottom: -5, // Place the row at the bottom
            left: 0,
            right: 0,
            child: Container(
              // color: Colors.white, // Background color of the row
               padding: EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/d2.jpeg',width: 350,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
