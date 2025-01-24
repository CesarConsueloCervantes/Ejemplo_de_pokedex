import 'package:ejemplo_de_pokedex/UI/models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TypeProvider extends ChangeNotifier{
  final String _baseUrl = 'https://pokeapi.co/api/v2/type';

  List<PType> types = [];
  Map<String, String> sprites = {};
  
  TypeProvider(){

    getPTypes();

  }

  Future<String> _getJsonData(String endpoint) async {
    final url = Uri.https(endpoint);

    final response = await http.get(url);
    return response.body;
  }

  getPTypes() async {
    final jsonData = await _getJsonData('$_baseUrl/type?offset=0&limit=100');
    final typeResponse = typeResponseFromJson(jsonData);

    _convertNameUrlToPType(typeResponse.results);
    notifyListeners();
  }

  getSpritesOfType() async {
    final jsonData = _getJsonData('$_baseUrl/');

    notifyListeners();
  }

    _convertNameUrlToPType(List<NameUrl> typesNameUrl) async {
    var jsonData;
    NameUrl typeNameUrl;
    String typeName;

    for (var i = 0; i < typesNameUrl.length; i++) {
      typeNameUrl = typesNameUrl[i];
      typeName = typeNameUrl.name;

      jsonData = await _getJsonData('$_baseUrl/type/$typeName');
      types[i] = pTypeFromJson(jsonData);
    }
  }
}