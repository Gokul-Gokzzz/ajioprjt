import 'package:ajio/screens/widgets.dart';
import 'package:ajio/screens/wishlist.dart';
import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
   Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<bool> selectedItems =[false,false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bag (2 products)'),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.close)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext) => WishListScreen()));
              },
              icon: Icon(Icons.favorite_border_outlined))
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 214, 205, 205),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image(image: AssetImage('assets/bg.jpeg')),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
              
                color: Colors.white,
                child: Column(
                  children: [
                   
                  
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image(
                            image: AssetImage('assets/bg1.jpeg'),
                            height: 140,
                          ),
                        ),
                        Column(
                          children: [
                            Text("NIKE"),
                            Text("Zip-Front Hoodie With Slip Pocket"),
                            Row(
                              children: [
                                Container(
                                  color: Colors.white54,
                                  height: 20,
                                  width: 70,
                                  child: Row(
                                    children: [
                                      Text("size"),
                                       SizedBox(width: 5,),
                                      Text("M"),
                                      Icon(
                                        Icons.arrow_drop_down_outlined,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10,),
                                 Container(
                                  color: Colors.white54,
                                  height: 20,
                                  width: 70,
                                  child: Row(
                                    children: [
                                      Text("Qty"),
                                       SizedBox(width: 5,),
                                      Text("1"),
                                      Icon(
                                        Icons.arrow_drop_down_outlined,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(children: [Text("₹5,487.00"),
                            SizedBox(width: 10,),
                            Text("₹8,995.00",
                            style: TextStyle(decoration: TextDecoration.lineThrough),),
                            SizedBox(width: 10,),
                            Text("(39%)")],),
                            Text("You Save ₹3,508.00",style: TextStyle(color: Color.fromARGB(255, 2, 89, 37)),)
                          
                          ],
                    
                        ),
                      
                      ],
                      
                    ),
                    Divider(color: Colors.black,),
                    Align(alignment: Alignment.bottomRight,
                      child: Text('Remove',style: TextStyle(color: Color.fromARGB(255, 114, 187, 247)),)),
        
        
                     Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image(
                            image: AssetImage('assets/bg2.jpeg'),
                            height: 140,
                          ),
                        ),
                        Column(
                          children: [
                            Text("NIKE"),
                            Text("Victori One Shower Sliders"),
                            Row(
                              children: [
                                Container(
                                  color: Colors.white54,
                                  height: 20,
                                  width: 70,
                                  child: Row(
                                    children: [
                                      Text("size"),
                                       SizedBox(width: 5,),
                                      Text("8"),
                                      Icon(
                                        Icons.arrow_drop_down_outlined,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10,),
                                 Container(
                                  color: Colors.white54,
                                  height: 20,
                                  width: 70,
                                  child: Row(
                                    children: [
                                      Text("Qty"),
                                       SizedBox(width: 5,),
                                      Text("1"),
                                      Icon(
                                        Icons.arrow_drop_down_outlined,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(children: [Text("₹1,034.00"),
                            SizedBox(width: 10,),
                            Text("₹1695.00",
                            style: TextStyle(decoration: TextDecoration.lineThrough),),
                            SizedBox(width: 10,),
                            Text("(39%)")],),
                            Text("You Save ₹3,661.00",style: TextStyle(color: Color.fromARGB(255, 2, 89, 37)),)
                          
                          ],
                    
                        ),
                      
                      ],
                      
                    ),
                    Divider(color: Colors.black,),
                    Align(alignment: Alignment.bottomRight,
                      child: Text('Remove',style: TextStyle(color: Color.fromARGB(255, 114, 187, 247)),)),
        
                
                  
                  ],
                
                  
                ),
                
              ),
              
            ),
              Container(
                    child: Text('Assured Quality | 100% Handpicked | Easy Exchange'),
                  ),  
                  
        
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Text('Apply Coupon'),
                      Row(
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Text('Select'))
                        ],
                      )
                      ],
                    ),
                  ),
        
                  Container(
                    child: Text('Redemption Option'),
                  ),
                  Container(
                    child: Image(image: AssetImage('assets/bg5.jpeg')),
                  )
          ],
        ),
      ),
    );
  }
}
