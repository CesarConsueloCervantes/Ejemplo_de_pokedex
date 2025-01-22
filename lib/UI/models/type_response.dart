// To parse this JSON data, do
//
//     final typeResponse = typeResponseFromJson(jsonString);

import 'dart:convert';

TypeResponse typeResponseFromJson(String str) => TypeResponse.fromJson(json.decode(str));

class TypeResponse {
    int count;
    dynamic next;
    dynamic previous;
    List<Result> results;

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
