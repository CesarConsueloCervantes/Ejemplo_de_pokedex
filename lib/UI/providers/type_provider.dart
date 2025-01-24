import 'package:ejemplo_de_pokedex/UI/models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TypeProvider extends ChangeNotifier{
  final String _baseUrl = 'https://pokeapi.co/api/v2/type';

  List<PType> types = [];
  Map<String, String> sprites = {};
  
  TypeProvider(){

  }

  Future<String> _getJsonData(String endpoint) async {
    final url = Uri.https(endpoint);

    final response = await http.get(url);
    return response.body;
  }

  

  getSpritesOfType() async {
    final jsonData = _getJsonData('$_baseUrl/');

    notifyListeners();
  }
}