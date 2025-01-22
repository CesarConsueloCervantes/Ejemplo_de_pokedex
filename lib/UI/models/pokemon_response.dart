// To parse this JSON data, do
//
//     final pokemonResponse = pokemonResponseFromJson(jsonString);

import 'dart:convert';

PokemonResponse pokemonResponseFromJson(String str) => PokemonResponse.fromJson(json.decode(str));

class PokemonResponse {
    int count;
    String next;
    String previous;
    List<Result> results;

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
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    );
}

class Result {
    String name;
    String url;

    Result({
        required this.name,
        required this.url,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        name: json["name"],
        url: json["url"],
    );
}