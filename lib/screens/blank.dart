import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  EmptyScreen({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      title: Text(
        title,
        style: TextStyle(color: Colors.black),
      ),
    ));
  }
}