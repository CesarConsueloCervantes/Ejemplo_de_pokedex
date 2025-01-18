import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  final int index;
  const ResultCard({super.key, required this.index});

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
          image: NetworkImage('https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/10277.png'),
          fit: BoxFit.contain
          ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('N.° $index', style: Theme.of(context).textTheme.headlineSmall),
          Text('option $index', style: Theme.of(context).textTheme.headlineMedium),
        //Text('Fletchinderssssssssssssssssssssssssssssssssssssssssssssss $index', style: Theme.of(context).textTheme.bodyLarge),
        ],
      )
    );
  }
}