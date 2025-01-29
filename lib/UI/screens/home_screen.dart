import 'package:ejemplo_de_pokedex/UI/providers/providers.dart';
import 'package:ejemplo_de_pokedex/UI/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final typeProvider = Provider.of<TypeProvider>(context);
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
            GroupOption(types: typeProvider.types),
          ],
        ),
      ),
    );
  }
}