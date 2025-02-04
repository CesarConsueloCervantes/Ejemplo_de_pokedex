import 'package:ejemplo_de_pokedex/UI/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:ejemplo_de_pokedex/UI/providers/providers.dart';
import 'package:ejemplo_de_pokedex/UI/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PType type = ModalRoute.of(context)!.settings.arguments as PType; 
    final pokemonProvider = Provider.of<PokemonProvider>(context);
    final List<NameUrl> pokemons = pokemonProvider.getPokemonsInType(type.pokemon); 
    return Scaffold(
      appBar: AppBar(
        title: Text('Group ${type.name}'),
      ),
      body:ListView.builder(
        itemBuilder: (context, index) => ListTile(
          title: FutureBuilder(
            future: pokemonProvider.getPokemon(pokemons[index]), 
            builder: (context, AsyncSnapshot<Pokemon> snapshot){
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Container(
                  constraints: const BoxConstraints(maxWidth: 100),
                  height: 100,
                  child: const CupertinoActivityIndicator(),
                );
              } else if (!snapshot.hasData) {
                return Container(
                  constraints: const BoxConstraints(maxWidth: 100),
                  height: 100,
                  child: const Text("No data"),
                );
              }
              
              Pokemon pokemon = snapshot.data!;

              return ResultCard(pokemon: pokemon);
            }
          ),
          onTap: () => Navigator.pushNamed(context, 'details', arguments: pokemonProvider.pokemons[pokemons[index].name]),
        ),
        itemCount: pokemons.length,
      ),
    );
  }
}
