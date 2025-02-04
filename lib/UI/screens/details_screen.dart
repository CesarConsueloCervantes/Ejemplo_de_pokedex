import 'package:ejemplo_de_pokedex/UI/models/models.dart';
import 'package:ejemplo_de_pokedex/UI/providers/pokemon_provider.dart';
import 'package:ejemplo_de_pokedex/UI/widgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Pokemon pokemon = ModalRoute.of(context)!.settings.arguments as Pokemon;
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
      ),
      body: SingleChildScrollView(
         child: Column(
           children: [
            Image(image: NetworkImage(pokemon.sprites.other!.officialArtwork.frontDefault!)),
            StatsPokemon(stats: pokemon.stats),
            SetMoves(moves: pokemon.moves)
          ],
        )
      )
    );
  }
}

class StatsPokemon extends StatelessWidget {
  final List<Stat> stats;
  const StatsPokemon({
    super.key,
    required this.stats
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
                StatsCard(statname: 'HP', stat: '${stats[0].baseStat}', color: const Color.fromARGB(255, 255, 0, 0)),
                StatsCard(statname: 'Atack', stat: '${stats[1].baseStat}', color: const Color.fromARGB(255, 240,128,48)),
                StatsCard(statname: 'Defence', stat: '${stats[2].baseStat}', color: const Color.fromARGB(255, 248,208,48)),
              ],
            ),
            SizedBox(width: 10),
            Column(
              children: [
                StatsCard(statname: 'S-Atack', stat: '${stats[3].baseStat}', color: const Color.fromARGB(255, 104,144,240)),
                StatsCard(statname: 'S-Defence', stat: '${stats[4].baseStat}', color: const Color.fromARGB(255, 120,200,80)),
                StatsCard(statname: 'Speed', stat: '${stats[5].baseStat}', color: const Color.fromARGB(255, 248,88,136)),
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
  final List<Move> moves;
  const SetMoves({
    super.key,
    required this.moves
  });

  @override
  Widget build(BuildContext context) {
    final pokemonProvider = Provider.of<PokemonProvider>(context);
    return Column(
      children: [
        Text('Set Moves',style: Theme.of(context).textTheme.displayMedium),
        SizedBox(
          height: 700,
          child: ListView.builder(
            itemBuilder: (context, index) => ListTile(
              title: FutureBuilder(
                future: pokemonProvider.getPMove(moves[index].move),
                builder: (_, AsyncSnapshot<PMove> snapshot){
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Container(
                      constraints: const BoxConstraints(maxWidth: 100),
                      height: 100,
                      child: const CupertinoActivityIndicator(),
                    );
                  } else if (!snapshot.hasData) {
                    return Container(
                      constraints: const BoxConstraints(maxWidth: 100),
                      height: 75,
                      child: const Text("No data"),
                    );
                  }

                  PMove move = snapshot.data!;

                  return MoveCard(moveName: move.name, type: move.type.name);
                }
              ),
            ),
            itemCount: moves.length,
          ),
        )
      ],
    );
  }
}