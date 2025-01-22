// To parse this JSON data, do
//
//     final pokemonResponse = pokemonResponseFromJson(jsonString);

import 'dart:convert';

import 'package:ejemplo_de_pokedex/UI/models/name_url.dart';

PokemonResponse pokemonResponseFromJson(String str) => PokemonResponse.fromJson(json.decode(str));

class PokemonResponse {
    int count;
    String next;
    String previous;
    List<NameUrl> results;

    PokemonResponse({
        required this.count,
        required this.next,
        required this.previous,
        required this.results,
    });

    factory PokemonResponse.fromJson(Map<String, dynamic> json) => PokemonResponse(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<NameUrl>.from(json["results"].map((x) => NameUrl.fromJson(x))),
    );
}