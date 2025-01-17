import 'package:ejemplo_de_pokedex/UI/widgets/widgets.dart';
import 'package:flutter/material.dart';
class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final int name = ModalRoute.of(context)!.settings.arguments as int; 
    return Scaffold(
      appBar: AppBar(
        title: Text('Group $name'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: ResultCard(index: index),
          onTap: () => Navigator.pushNamed(context, 'details'),
        ),
        itemCount: 40,
      ),
    );
  }
}
