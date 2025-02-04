import 'package:ejemplo_de_pokedex/UI/models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PokemonProvider extends ChangeNotifier{
    final String _baseUrl = 'pokeapi.co';

  Map<String, PMove> pokemonMoves = {};
  Map<String, Pokemon> pokemons = {};

  PokemonProvider(){
    pokemonMoves;
    pokemons;
  }
  
  Future<String> _getJsonData(String endpoint) async {
    final url = Uri.https(_baseUrl, 'api/v2/$endpoint');

    final response = await http.get(url);
    return response.body;
  }

  List<NameUrl> getPokemonsInType(List<TPokemon> tPokemons, [int page = 0]){
    List<NameUrl> pokemosNameUrl = [];
    
    for (var i = page; i < tPokemons.length; i++) {
        pokemosNameUrl.add(tPokemons[i].pokemon);
    }

    return pokemosNameUrl;
  }

  Future<Pokemon> getPokemon(NameUrl pokemonNameUrl)async{
    if (pokemons.containsKey(pokemonNameUrl.name)) return pokemons[pokemonNameUrl.name]!;

    final jsonData = await _getJsonData('pokemon/${pokemonNameUrl.name}');
    print(jsonData);
    final pokemon = pokemonFromJson(jsonData);

    pokemons[pokemon.name] = pokemon;
    return pokemon;
  }

  Future<List<Pokemon>> searchPokemons () async{
    final jsonData = await _getJsonData('pokemon?offset=0&limit=10000');
    final pokemonResponse = pokemonResponseFromJson(jsonData);

    final List<NameUrl> nameUrlPokemons =pokemonResponse.results;
    final List<Pokemon> pokemons = await convertNameUrltoPokemons(nameUrlPokemons);

    return pokemons;
  }

  Future<PMove> getPMove(NameUrl move) async {
    if(pokemonMoves.containsKey(move.name)) return pokemonMoves[move.name]!;

    final jsonData = await _getJsonData('move/${move.name}');
    final moveResponse = pMoveFromJson(jsonData);

    pokemonMoves[move.name] = moveResponse;
    return moveResponse;
  }

  Future<List<Pokemon>> convertNameUrltoPokemons(List<NameUrl> nameUrlPokemons) async {
    List<Pokemon> pokemons = [];

    var jsonData;

    NameUrl nameUrlPokemon;
    String namePokemon;
    
    for (var i = 0; i < nameUrlPokemons.length; i++) {
      nameUrlPokemon = nameUrlPokemons[i];
      namePokemon = nameUrlPokemon.name;

      jsonData = await _getJsonData('pokemon/$namePokemon');
      pokemons[i] = pokemonFromJson(jsonData);
    }

    return pokemons;
  }
}