import 'package:ajio/screens/widgets.dart';
import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {

final second = [
  'assets/secim1.PNG',
  'assets/secim2.PNG',
  'assets/secim3.PNG',
  'assets/secim5.PNG',
  'assets/secim6.PNG',
];

final expimg = [
  'assets/exp1.1.PNG',
  'assets/exp1.2.PNG',
  'assets/exp1.3.PNG',
];





  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appBar(context),
      body:Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Image(image: AssetImage('assets/secim4.PNG')),
                  ),
                  SizedBox(height: 1,),
                  slide(carouselimage: second, height: 250),

                  exploreImage(),

                  slide(carouselimage: expimg, height: 100),
                  Container(child: Image(image: AssetImage('assets/exp2.1.jpeg')),),

                
               
                ],
              ),
            )
            )
        ]) ,
    );
  }
}