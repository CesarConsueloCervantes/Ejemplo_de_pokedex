import 'package:ejemplo_de_pokedex/UI/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Grupos', style: Theme.of(context).textTheme.headlineSmall),
            GroupOption(),
            Text('Grupos 2', style: Theme.of(context).textTheme.headlineSmall),
            GroupOption(),        
          ],
        ),
      ),
    );
  }
}