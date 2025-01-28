import 'package:ejemplo_de_pokedex/UI/models/models.dart';
import 'package:http/http.dart' as http;

class PokemonProvider {
    final String _baseUrl = 'https://pokeapi.co/api/v2';
    final int _pageLimit = 40;

  Map<String, List<PMove>> pokemonMoves = {};
  
  Future<String> _getJsonData(String endpoint) async {
    final url = Uri.https(_baseUrl, endpoint);

    final response = await http.get(url);
    return response.body;
  }

  Future<List<Pokemon>> getPokemonsInType(List<TPokemon> tPokemons, [int page = 0])async{
    List<NameUrl> pokemosNameUrl = [];
    
    for (var i = page; i < _pageLimit; i++) {
        pokemosNameUrl[i] = tPokemons[i].pokemon;
    }

    List<Pokemon> pokemons = await convertNameUrltoPokemons(pokemosNameUrl);

    return pokemons;
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
      pMoves[i] = pMoveFromJson(jsonData);
    }

    return pMoves;
  }
}