import 'package:ejemplo_de_pokedex/UI/models/models.dart';
import 'package:http/http.dart' as http;

class PokemonProvider {
    final String _baseUrl = 'https://pokeapi.co/api/v2';
  
  Future<String> _getJsonData(String endpoint) async {
    final url = Uri.https(_baseUrl, endpoint);

    final response = await http.get(url);
    return response.body;
  }

}