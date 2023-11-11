

import 'package:ajio/tabs/TRNDin.dart';
import 'package:ajio/tabs/account.dart';
import 'package:ajio/tabs/ajihome.dart';
import 'package:ajio/tabs/category.dart';
import 'package:ajio/tabs/explore.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;

  final List _tabs = [
    Ajio(),
   Explore(),
   TRNDin(),
   Categeories(),
   Account()
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap:_onTabTapped ,

        items: [
           BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),
        label: 'Home',  
        ),
        // BottomNavigationBarItem(icon: Icon(Icons.view_cozy_rounded,color: Colors.black,),
        // label: 'Switch Store',  
        // ),
        BottomNavigationBarItem(icon: Icon(Icons.store_mall_directory_outlined,color: Colors.black,),
        label: 'Explore',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.line_axis_outlined,color: Colors.black,),
        label: 'TRNDin',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.list,color: const Color.fromARGB(255, 170, 74, 74),),
        label: 'Categeories',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined,color: Colors.black,),
        label: 'Account',
        
        ),
        
      ],selectedItemColor: Colors.black,
      ),

    );
  }
}