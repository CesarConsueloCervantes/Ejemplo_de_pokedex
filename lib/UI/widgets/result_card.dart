import 'package:ejemplo_de_pokedex/UI/models/models.dart';
import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  final Pokemon pokemon;
  const ResultCard({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, bottom: 5 ,top: 5, right: 100),
      height: 100,
      decoration: BoxDecoration(
        //color: Colors.lightBlueAccent, TODO poner una forma de colorear dependiendo el tipo(que bonito)
        border: Border.all(width: 1),
        image: DecorationImage(
          alignment: Alignment.centerRight,
          image: NetworkImage(pokemon.sprites.frontDefault!),
          fit: BoxFit.contain
          ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('N.° ${pokemon.id}', style: Theme.of(context).textTheme.headlineSmall),
          Text(pokemon.name, style: Theme.of(context).textTheme.headlineMedium),
        //Text('Fletchinderssssssssssssssssssssssssssssssssssssssssssssss $index', style: Theme.of(context).textTheme.bodyLarge),
        ],
      )
    );
  }
}