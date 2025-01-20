import 'package:ejemplo_de_pokedex/UI/widgets/widgets.dart';
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
            StatsPokemon()
          ],
        )
      )
    );
  }
}

class StatsPokemon extends StatelessWidget {
  const StatsPokemon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            StatsCard(statname: 'HP', stat: '123', color: Colors.lightGreenAccent),
            StatsCard(statname: 'Atack', stat: '12', color: Colors.red),
            StatsCard(statname: 'Defence', stat: '23', color: Colors.blueAccent),
          ],
        ),
        SizedBox(width: 10),
        Column(
          children: [
            StatsCard(statname: 'Speed', stat: '56', color: Colors.purple),
            StatsCard(statname: 'S-Atack', stat: '34', color: Colors.orange),
            StatsCard(statname: 'S-Defence', stat: '45', color: Colors.lightBlueAccent),
          ],
        )
      ],
    );
  }
}
