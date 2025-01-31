import 'package:ejemplo_de_pokedex/UI/models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PokemonProvider extends ChangeNotifier{
    final String _baseUrl = 'pokeapi.co';
    final int _pageLimit = 40;

  Map<String, List<PMove>> pokemonMoves = {};
  List<NameUrl> pokemons = [];

  PokemonProvider(){
    pokemonMoves;
  }
  
  Future<String> _getJsonData(String endpoint) async {
    final url = Uri.https(_baseUrl, 'api/v2/$endpoint');

    final response = await http.get(url);
    return response.body;
  }

  List<NameUrl> getPokemonsInType(List<TPokemon> tPokemons, [int page = 0]){
    List<NameUrl> pokemosNameUrl = [];
    
    for (var i = page; i < _pageLimit; i++) {
        pokemosNameUrl.add(tPokemons[i].pokemon);
    }

    pokemons = pokemosNameUrl;
    return pokemosNameUrl;
  }

  Future<Pokemon> getPokemon(NameUrl pokemonNameUrl)async{

    final jsonData = await _getJsonData('pokemon/${pokemonNameUrl.name}');
    print(jsonData);
    final pokemon = pokemonFromJson(jsonData);

    return pokemon;
  }

  Future<List<Pokemon>> searchPokemons () async{
    final jsonData = await _getJsonData('pokemon?offset=0&limit=10000');
    final pokemonResponse = pokemonResponseFromJson(jsonData);

    final List<NameUrl> nameUrlPokemons =pokemonResponse.results;
    final List<Pokemon> pokemons = await convertNameUrltoPokemons(nameUrlPokemons);

    return pokemons;
  }

  Future<List<PMove>> getPokemonMoves(String namePokemon)async{
    List<PMove> pMoves;

    final jsonData = await _getJsonData('pokemon/$namePokemon');
    final pokemonMove = pokemonFromJson(jsonData);

    if (pokemonMoves[namePokemon] !=null){
      pMoves = pokemonMoves[namePokemon]!;
    } else {
    final List<Move> moves = pokemonMove.moves;
      pMoves = await convertMovesToPmoves(moves);
    pokemonMoves[namePokemon] = pMoves;
    }

    return pMoves;
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

  Future<List<PMove>> convertMovesToPmoves(List<Move> moves) async {
    List<PMove> pMoves = [];

    var jsonData;
    NameUrl pMove;
    String nameMove;

    for (var i = 0; i < moves.length; i++) {
      pMove = moves[i].move;
      nameMove = pMove.name;

      jsonData = await _getJsonData('move/$nameMove');
      pMoves.add(pMoveFromJson(jsonData));
    }

    return pMoves;
  }
}