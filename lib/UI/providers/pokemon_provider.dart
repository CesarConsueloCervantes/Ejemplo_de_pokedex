import 'package:ejemplo_de_pokedex/UI/models/models.dart';
import 'package:http/http.dart' as http;

class PokemonProvider {
    final String _baseUrl = 'https://pokeapi.co/api/v2';
    final int _pageLimit = 40;

  int page = 0; //de 40 en 40
  List<Pokemon> pokemonsOnDisplay = [];
  
  Future<String> _getJsonData(String endpoint) async {
    final url = Uri.https(_baseUrl, endpoint);

    final response = await http.get(url);
    return response.body;
  }

    Future<List<Pokemon>> getPokemonOnDisplay () async{
    final jsonData = await _getJsonData('pokemon?offset=$page&limit=$_pageLimit');
    final pokemonResponse = pokemonResponseFromJson(jsonData);
    page += 40;

    final List<NameUrl> nameUrlPokemons =pokemonResponse.results;
    final List<Pokemon> pokemons = await convertNameUrltoPokemons(nameUrlPokemons);

    pokemonsOnDisplay=pokemons;
    return pokemons;
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