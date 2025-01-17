import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pokemon'),
      ),
      body: MediaQuery.removePadding(
        context: context,
         child: Column(
           children: [
            Image(image: NetworkImage('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/10010.png')),
            Divider(),
          ],
        )
      )
    );
  }
}

