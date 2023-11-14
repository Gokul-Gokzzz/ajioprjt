

import 'package:ajio/screens/noti.dart';
import 'package:ajio/screens/shop.dart';
import 'package:ajio/screens/wishlist.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



final PageController _pageController = PageController();

 appBar(context){
  return  AppBar(
        title: Container(
          
          child: Row(
            children: [
              Image(image:AssetImage('assets/Ajio-Logo.webp',),width: 30,height: 30,),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search by Product,Brand & more"
                  ),
                
                   
                ),
              ),
              Icon(Icons.camera_alt_outlined)
            ],
          ),
        ),
        actions: [
           IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>notification()));
           },
            icon:Icon(Icons.notifications_none_outlined),
            ),

            IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder:(context)=>WishListScreen()));
          },
           icon:Icon(Icons.favorite_outline_rounded)
           ),
           IconButton(onPressed:(){
            Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext)=>Cart()));
           }, icon: Icon(Icons.shopping_bag_outlined)),
         
           
        ],
        
      );
}

 Scroll(){
  return Container(
    height: 50,
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black,
          offset: Offset(0,4),
          blurRadius: 15,
        )  
      ]
    ),
   child: Row(
    children: [
  Icon(
    Icons.home,
    color: Colors.black
    ),
    SizedBox(width: 12,),
    CircleAvatar(
      backgroundImage:AssetImage('assets/sale.png') ,
      radius: 15,
    ),
    SizedBox(width: 7,),
    Text(
      'Sale',
    style: TextStyle(color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    ),
    ),
    
    SizedBox(width: 12,),

        CircleAvatar(
      backgroundImage:AssetImage('assets/winter.png') ,
      radius: 15,
    ),
    SizedBox(width: 7,),

     Text(
      'WinterWear',
    style: TextStyle(color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    ),
    ),
    
    SizedBox(width: 12,),


        CircleAvatar(
      backgroundImage:AssetImage('assets/men.webp') ,
      radius: 15,
    ),
    SizedBox(width: 7,),

     Text(
      'Men',
    style: TextStyle(color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    ),
    ),
    
    SizedBox(width: 12,),


        CircleAvatar(
      backgroundImage:AssetImage('assets/women.webp') ,
      radius: 15,
    ),
    SizedBox(width: 7,),

     Text(
      'Women',
    style: TextStyle(color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    ),
    ),
    
    SizedBox(width: 12,),


        CircleAvatar(
      backgroundImage:AssetImage('assets/kids.png') ,
      radius: 15,
    ),
    SizedBox(width: 7,),

     Text(
      'Kids',
    style: TextStyle(color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    ),
    ),
    
    SizedBox(width: 12,),


        CircleAvatar(
      backgroundImage:AssetImage('assets/jewwllery.png') ,
      radius: 15,
    ),
    SizedBox(width: 7,),                               

      Text(                                                       
      'Jewellery',
    style: TextStyle(color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    ),
    ),
    
    SizedBox(width: 12,),

        
        CircleAvatar(
      backgroundImage:AssetImage('assets/footware.png') ,
      radius: 15,
    ),
    SizedBox(width: 7,),

     Text(
      'Footwear',
    style: TextStyle(color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    ),
    ),
    
    SizedBox(width: 12,),


        CircleAvatar(
      backgroundImage:AssetImage('assets/beauty.png') ,
      radius: 15,
    ),
    SizedBox(width: 7,),

     Text(
      'Beauty',
    style: TextStyle(color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    ),
    ),
    
    SizedBox(width: 12,),

  
          CircleAvatar(
      backgroundImage:AssetImage('assets/home grown.png') ,
      radius: 15,
    ),
    SizedBox(width: 7,),

  Text(
      'Home',
    style: TextStyle(color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    ),
    ),
    
    SizedBox(width: 12,),
    


         CircleAvatar(
      backgroundImage:AssetImage('assets/accessories.png') ,
      radius: 15,
    ),
    SizedBox(width: 7,),

  Text(
      'Accessories',
    style: TextStyle(color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    ),
    ),
    
    SizedBox(width: 12,),

           CircleAvatar(
      backgroundImage:AssetImage('assets/home grown.png') ,
      radius: 15,
    ),
    SizedBox(width: 7,),

  Text(
      'Home Grow Brands',
    style: TextStyle(color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.w400,
    ),
    ),
    
    SizedBox(width: 12,),

   ]),
  );

}

Widget slide({required carouselimage, required double height}) {
  return Stack(
    children: [
      CarouselSlider.builder(
         carouselController: CarouselController(),
        itemCount: carouselimage.length,
        itemBuilder: (context, index, realindex) {
          final images = carouselimage[index];
          return Container(
            width: double.infinity,
            color: Colors.grey,
            child: Image.asset(
              images,
              fit: BoxFit.fill,
            ),
          );
        },
        options: CarouselOptions(
          height: height,
          autoPlay: true,
          viewportFraction: 1,
          onPageChanged: (index, reason) {
           
          },
        ),
      ),
      Positioned(
        bottom: 10.0, 
        left: 150,
        right: 0,
        child: SmoothPageIndicator(
          controller: _pageController, 
          count: carouselimage.length,
          effect: JumpingDotEffect(
            dotColor: Colors.grey,
            activeDotColor: Colors.blue,
            dotHeight: 9,
            dotWidth: 8,
          ),
          onDotClicked: (index){
            OnDotClicked(index,animationController){
              animationController.forward();
            }
          },
          
          
        ),
      
      ),
    ],
  );
}

 Widget indicator (List<String> carouselimage)=>AnimatedSmoothIndicator(
    activeIndex: 0,
 count: carouselimage.length,
 effect: JumpingDotEffect(
  dotWidth: 8,
  dotHeight: 8,
  activeDotColor: Colors.amber,dotColor: Colors.white
 ),
 );




exploreImage() {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.all(8),
        width: double.infinity,
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 250,
              height: 200,
              color: Colors.black,
              child: Image(
                image: AssetImage('assets/exp1.png'),
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(8, 0, 0, 4),
                        // color: Colors.yellow,
                        child: Image(
                          image: AssetImage('assets/exp2.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(8, 4, 0, 0),
                        color: const Color.fromARGB(255, 52, 51, 42),
                        child:
                            Image(image: AssetImage('assets/exp3.png')),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(8),
        width: double.infinity,
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Color.fromARGB(255, 255, 255, 255),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 8, 4),
                      // color: Colors.yellow,
                      child: Image(
                        image: AssetImage('assets/exp4.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(0, 4, 8, 0),
                      color: const Color.fromARGB(255, 52, 51, 42),
                      child: Image(image: AssetImage('assets/exp5.png')),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: 250,
                height: 200,
                color: Colors.black,
                child: Image(
                  image: AssetImage('assets/exp6.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(8),
        width: double.infinity,
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 250,
              height: 200,
              color: Colors.black,
              child: Image(
                image: AssetImage('assets/exp7.png'),
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Container(
                color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(8, 0, 0, 4),
                        // color: Colors.yellow,
                        child: Image(
                          image: AssetImage('assets/exp8.png'),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(8, 4, 0, 0),
                        color: const Color.fromARGB(255, 52, 51, 42),
                        child:
                            Image(image: AssetImage('assets/exp9.jpg')),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )
    ],
  );
}


Widget WishlistItem(String imagePath, text1, text2, prize, mrp, off) {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        width: 170,
        height: 220,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(
        height: 10,
      ),
      wishListDetail(text1, text2, prize, mrp, off)
    ],
  );
}

Widget wishListDetail(text1, text2, prize, mrp, off) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(text1),
      SizedBox(
        height: 5,
      ),
      Text(
        text2,
        style: TextStyle(fontWeight: FontWeight.w300),
      ),
      SizedBox(
        height: 5,
      ),
      Row(
        children: [
          Text(
            '₹${prize} ',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          Text(
            '₹${mrp} ',
            style: TextStyle(
                decoration: TextDecoration.lineThrough,
                fontSize: 13,
                fontWeight: FontWeight.w300),
          ),
          Text(
            '${off}% off ',
            style: TextStyle(
                color: Colors.green, fontSize: 13, fontWeight: FontWeight.w600),
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      Row(
        children: [
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              border: Border.all(color: Colors.black),
            ),
            child: Icon(Icons.delete_outline_rounded),
          ),
          SizedBox(
            width: 5,
          ),
          ElevatedButton.icon(
              style: ButtonStyle(
                  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7))),
                  backgroundColor: MaterialStatePropertyAll(Colors.black)),
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: Text("Add To Bag"))
        ],
      )
    ],
  );
}

 