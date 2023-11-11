import 'package:ajio/screens/widgets.dart';
import 'package:flutter/material.dart';

class TRNDin extends StatelessWidget {
   TRNDin({super.key});

  @override


  final exp1 = [
  'assets/exp3.7.PNG',
  'assets/exp3.6.PNG',
  'assets/exp3.5.PNG',
];

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: appBar(context),
      body: Column(
        children: [SingleChildScrollView(
          scrollDirection: Axis.horizontal,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Image(image: AssetImage('assets/sec1.jpeg')),
                      ),
            
                      slide(carouselimage: exp1, height: 250),
            
                      Container(child: Image(image: AssetImage('assets/exp3.3.PNG')),),
                    
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            child: Image(image: AssetImage('assets/exp3.4.PNG'),height: 350,),
                          ),
                          Container(
                            child: Image(image: AssetImage('assets/exp3.2.PNG'),height: 350,),
                          ),SizedBox(width: 10,),
                          Container(
                            child: Image(image: AssetImage('assets/exp3.1.PNG'),height: 350,),
                          ),
                        ],
                      ),
                    ),
                    Container(child: Image(image: AssetImage('assets/trd1.jpeg')),)
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        child: Image(image: AssetImage('assets/trd 2.jpeg'),width: 200,),
                      ),
                         Container(
                        child: Image(image: AssetImage('assets/trd3.jpeg'),width: 200,),
                      ),
                         Container(
                        child: Image(image: AssetImage('assets/trd 4.jpeg'),width: 200,),
                      ),
                         Container(
                        child: Image(image: AssetImage('assets/trd 5.jpeg'),width: 200,),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
          )
        ],
      ),
    );
  }
}