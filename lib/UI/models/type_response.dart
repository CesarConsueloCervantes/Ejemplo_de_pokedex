// To parse this JSON data, do
//
//     final typeResponse = typeResponseFromJson(jsonString);

import 'dart:convert';

import 'package:ejemplo_de_pokedex/UI/models/name_url.dart';

TypeResponse typeResponseFromJson(String str) => TypeResponse.fromJson(json.decode(str));

class TypeResponse {
    int count;
    dynamic next;
    dynamic previous;
    List<NameUrl> results;

    TypeResponse({
        required this.count,
        required this.next,
        required this.previous,
        required this.results,
    });

    factory TypeResponse.fromJson(Map<String, dynamic> json) => TypeResponse(
        count: json["count"],
        next: json["next"],
        previous: json["previous"],
        results: List<NameUrl>.from(json["results"].map((x) => NameUrl.fromJson(x))),
    );
}
