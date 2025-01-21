import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TypeProvider extends ChangeNotifier{
  final String _baseUrl = 'https://pokeapi.co/api/v2/type';

  List<String> sprites=[];
  
  TypeProvider(){

  }

  Future<String> _getJsonData(String endpoint) async {
    final url = Uri.https(_baseUrl, endpoint);

    final response = await http.get(url);
    return response.body;
  }


}