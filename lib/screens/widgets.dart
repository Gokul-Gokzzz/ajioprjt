import 'package:flutter/material.dart';

Widget appBar(){
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
           Icon(Icons.notifications_none_outlined),
           SizedBox(width: 10,),
           Icon(Icons.favorite_outline_rounded),
           SizedBox(width: 10,),
           Icon(Icons.shopping_bag_outlined)
        ],
        // backgroundColor: Colors.blue,
      );
}