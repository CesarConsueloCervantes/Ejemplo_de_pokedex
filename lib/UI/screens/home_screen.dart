import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        children: [
          Container( // Search By Group
          margin: EdgeInsets.symmetric(horizontal: 10),
            width: double.infinity,
            height: 70,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}