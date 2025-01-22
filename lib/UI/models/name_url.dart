class NameUrl {
    String name;
    String url;

    NameUrl({
        required this.name,
        required this.url,
    });

    factory NameUrl.fromJson(Map<String, dynamic> json) => NameUrl(
        name: json["name"],
        url: json["url"],
    );
}