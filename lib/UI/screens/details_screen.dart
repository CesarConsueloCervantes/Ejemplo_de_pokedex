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
            StatsPokemon(),
            SetMoves()
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
    return Column(
      children: [
        Divider(),
        Text('Base Stats',style: Theme.of(context).textTheme.displayMedium),
        Row(
          children: [
            Column(
              children: [
                StatsCard(statname: 'HP', stat: '123', color: const Color.fromARGB(255, 255, 0, 0)),
                StatsCard(statname: 'Atack', stat: '12', color: const Color.fromARGB(255, 240,128,48)),
                StatsCard(statname: 'Defence', stat: '23', color: const Color.fromARGB(255, 248,208,48)),
              ],
            ),
            SizedBox(width: 10),
            Column(
              children: [
                StatsCard(statname: 'S-Atack', stat: '34', color: const Color.fromARGB(255, 104,144,240)),
                StatsCard(statname: 'S-Defence', stat: '45', color: const Color.fromARGB(255, 120,200,80)),
                StatsCard(statname: 'Speed', stat: '56', color: const Color.fromARGB(255, 248,88,136)),
              ],
            )
          ],
        ),
        SizedBox(height: 10,),
        Divider(),
      ],
    );
  }
}

class SetMoves extends StatelessWidget {
  const SetMoves({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap();
  }
}