import 'package:ajio/screens/widgets.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Ajio extends StatefulWidget {
  Ajio({super.key});

  @override
  State<Ajio> createState() => _AjioState();
}

class _AjioState extends State<Ajio> {
  int actindex = 0;

  final carouselimage = [
    'assets/IMG_1.PNG',
    'assets/IMG_2.PNG',
    'assets/IMG_3.PNG',
    'assets/IMG_4.PNG',
  ];

  final offer = [
    'assets/offer 1.jpg',
    'assets/offer-2.png',
    'assets/offer-3.png',
    'assets/offer 4.png',
    'assets/offer 5.png',
    'assets/offer 6.png',
  ];

  final min = [
    'assets/IMG1.PNG',
    'assets/IMG2.PNG',
    'assets/IMG3.PNG',
    'assets/IMG4.PNG',
    'assets/IMG5.jpg',
  ];

  final fest = [
    'assets/ph1.jpg',
    'assets/ph2.jpg',
    'assets/ph3.jpg',
    'assets/ph4.jpg',
    'assets/ph5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(context),
        body: Column(
          children: [
            SingleChildScrollView(
                scrollDirection: Axis.horizontal, child: Scroll()),
            Expanded(
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    child: Center(
                      child: Text(
                        'HURRY! UP LAST 2 DAYS OF SALE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow,
                            fontSize: 20),
                      ),
                    ),
                    color: Color.fromARGB(255, 0, 72, 90),
                  ),
                  slide(carouselimage: carouselimage, height: 250),
                  Image(
                      image:
                          AssetImage('assets/photo_2023-11-09_15-52-42.jpg')),
                  Container(
                    height: 50,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Image(image: AssetImage('assets/slid 1.jpg')),
                          Image(image: AssetImage('assets/slid 2.jpg')),
                          Image(image: AssetImage('assets/slid 3.jpg')),
                          Image(image: AssetImage('assets/slid 4.jpg')),
                          Image(image: AssetImage('assets/slid 5.jpg')),
                          Image(image: AssetImage('assets/slid 6.jpg')),
                          Image(image: AssetImage('assets/slid 7.jpg')),
                          Image(image: AssetImage('assets/slid 8.jpg')),
                          Image(image: AssetImage('assets/slid 9.jpg')),
                          Image(image: AssetImage('assets/slid 10.jpg')),
                          Image(image: AssetImage('assets/slid 11.jpg')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Image(image: AssetImage('assets/single bar.jpg')),
                    //  height: 10,
                    width: 450,
                  ),
                  slide(carouselimage: offer, height: 250),
                  Container(
                    child: Image(image: AssetImage('assets/daz.jpg')),
                  ),
                  slide(carouselimage: min, height: 250),
                  Container(
                    child: Image(image: AssetImage('assets/sl.jpeg')),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      height: 300,
                      child: Row(
                        children: [
                          Image(image: AssetImage('assets/whats1.jpeg')),
                          Image(image: AssetImage('assets/whats2.jpeg')),
                          Image(image: AssetImage('assets/whats3.jpeg')),
                          Image(image: AssetImage('assets/whats4.jpeg')),
                          Image(image: AssetImage('assets/whats5.jpeg')),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Image(image: AssetImage('assets/ph6.jpg')),
                  ),
                  slide(carouselimage: fest, height: 250),
                  Container(
                    child: Image(image: AssetImage('assets/last.jpeg')),
                  ),
                ]),
              ),
            ),
          ],
        ));
  }

  Widget indicator() => AnimatedSmoothIndicator(
        activeIndex: 0,
        count: carouselimage.length,
        effect: JumpingDotEffect(
            dotWidth: 8,
            dotHeight: 8,
            activeDotColor: Colors.amber,
            dotColor: Colors.white),
      );
}
