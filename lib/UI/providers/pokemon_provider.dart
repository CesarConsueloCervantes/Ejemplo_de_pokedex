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
    final List<Pokemon> pokemons ;

    pokemonsOnDisplay=pokemons;
    return pokemons;
  }
}