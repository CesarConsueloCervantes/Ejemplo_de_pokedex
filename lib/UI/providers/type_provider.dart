import 'package:ejemplo_de_pokedex/UI/models/models.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TypeProvider extends ChangeNotifier{
  final String _baseUrl = 'pokeapi.co';

  List<PType> types = [];
  Map<String, String> sprites = {};
  
  TypeProvider(){

    getPTypes();
  }

  Future<String> _getJsonData(String endpoint) async {
    final url = Uri.https(_baseUrl, 'api/v2/$endpoint');

    print(url);
    final response = await http.get(url);
    print(response.body);
    return response.body;
  }


  getPTypes() async {
    final jsonData = await _getJsonData('type');
    final typeResponse = typeResponseFromJson(jsonData);

    _convertNameUrlToPType(typeResponse.results);
    notifyListeners();
  }

  getSpritesOfType(){
    for (var i = 0; i < types.length; i++) {
      if(types[i].sprites.generationViii.brilliantDiamondAndShiningPearl.nameIcon != null){
        sprites[types[i].name] = types[i].sprites.generationViii.brilliantDiamondAndShiningPearl.nameIcon!;
      }else{
        sprites[types[i].name] = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/types/generation-iii/colosseum/10001.png';
      }
    }

    notifyListeners();
  }

    _convertNameUrlToPType(List<NameUrl> typesNameUrl) async {
    print(typesNameUrl);
    var jsonData;
    NameUrl typeNameUrl;
    String typeName;

    for (var i = 0; i < typesNameUrl.length; i++) {
      typeNameUrl = typesNameUrl[i];
      typeName = typeNameUrl.name;

      jsonData = await _getJsonData('type/$typeName');
      types.add(pTypeFromJson(jsonData));
    }
    getSpritesOfType();
    print(types);
  }
}