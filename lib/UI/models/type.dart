// To parse this JSON data, do
//
//     final type = typeFromJson(jsonString);

import 'dart:convert';

Type typeFromJson(String str) => Type.fromJson(json.decode(str));

class Type {
    DamageRelations damageRelations;
    List<GameIndex> gameIndices;
    Generation generation;
    int id;
    Generation moveDamageClass;
    List<Generation> moves;
    String name;
    List<Name> names;
    List<dynamic> pastDamageRelations;
    List<Pokemon> pokemon;
    Sprites sprites;

    Type({
        required this.damageRelations,
        required this.gameIndices,
        required this.generation,
        required this.id,
        required this.moveDamageClass,
        required this.moves,
        required this.name,
        required this.names,
        required this.pastDamageRelations,
        required this.pokemon,
        required this.sprites,
    });

    factory Type.fromJson(Map<String, dynamic> json) => Type(
        damageRelations: DamageRelations.fromJson(json["damage_relations"]),
        gameIndices: List<GameIndex>.from(json["game_indices"].map((x) => GameIndex.fromJson(x))),
        generation: Generation.fromJson(json["generation"]),
        id: json["id"],
        moveDamageClass: Generation.fromJson(json["move_damage_class"]),
        moves: List<Generation>.from(json["moves"].map((x) => Generation.fromJson(x))),
        name: json["name"],
        names: List<Name>.from(json["names"].map((x) => Name.fromJson(x))),
        pastDamageRelations: List<dynamic>.from(json["past_damage_relations"].map((x) => x)),
        pokemon: List<Pokemon>.from(json["pokemon"].map((x) => Pokemon.fromJson(x))),
        sprites: Sprites.fromJson(json["sprites"]),
    );
}

class DamageRelations {
    List<Generation> doubleDamageFrom;
    List<dynamic> doubleDamageTo;
    List<dynamic> halfDamageFrom;
    List<Generation> halfDamageTo;
    List<Generation> noDamageFrom;
    List<Generation> noDamageTo;

    DamageRelations({
        required this.doubleDamageFrom,
        required this.doubleDamageTo,
        required this.halfDamageFrom,
        required this.halfDamageTo,
        required this.noDamageFrom,
        required this.noDamageTo,
    });

    factory DamageRelations.fromJson(Map<String, dynamic> json) => DamageRelations(
        doubleDamageFrom: List<Generation>.from(json["double_damage_from"].map((x) => Generation.fromJson(x))),
        doubleDamageTo: List<dynamic>.from(json["double_damage_to"].map((x) => x)),
        halfDamageFrom: List<dynamic>.from(json["half_damage_from"].map((x) => x)),
        halfDamageTo: List<Generation>.from(json["half_damage_to"].map((x) => Generation.fromJson(x))),
        noDamageFrom: List<Generation>.from(json["no_damage_from"].map((x) => Generation.fromJson(x))),
        noDamageTo: List<Generation>.from(json["no_damage_to"].map((x) => Generation.fromJson(x))),
    );
}

class Generation {
    String name;
    String url;

    Generation({
        required this.name,
        required this.url,
    });

    factory Generation.fromJson(Map<String, dynamic> json) => Generation(
        name: json["name"],
        url: json["url"],
    );
}

class GameIndex {
    int gameIndex;
    Generation generation;

    GameIndex({
        required this.gameIndex,
        required this.generation,
    });

    factory GameIndex.fromJson(Map<String, dynamic> json) => GameIndex(
        gameIndex: json["game_index"],
        generation: Generation.fromJson(json["generation"]),
    );
}

class Name {
    Generation language;
    String name;

    Name({
        required this.language,
        required this.name,
    });

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        language: Generation.fromJson(json["language"]),
        name: json["name"],
    );
}

class Pokemon {
    Generation pokemon;
    int slot;

    Pokemon({
        required this.pokemon,
        required this.slot,
    });

    factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        pokemon: Generation.fromJson(json["pokemon"]),
        slot: json["slot"],
    );
}

class Sprites {
    GenerationIii generationIii;
    GenerationIv generationIv;
    GenerationIx generationIx;
    GenerationV generationV;
    Map<String, Colosseum> generationVi;
    GenerationVii generationVii;
    GenerationViii generationViii;

    Sprites({
        required this.generationIii,
        required this.generationIv,
        required this.generationIx,
        required this.generationV,
        required this.generationVi,
        required this.generationVii,
        required this.generationViii,
    });

    factory Sprites.fromJson(Map<String, dynamic> json) => Sprites(
        generationIii: GenerationIii.fromJson(json["generation-iii"]),
        generationIv: GenerationIv.fromJson(json["generation-iv"]),
        generationIx: GenerationIx.fromJson(json["generation-ix"]),
        generationV: GenerationV.fromJson(json["generation-v"]),
        generationVi: Map.from(json["generation-vi"]).map((k, v) => MapEntry<String, Colosseum>(k, Colosseum.fromJson(v))),
        generationVii: GenerationVii.fromJson(json["generation-vii"]),
        generationViii: GenerationViii.fromJson(json["generation-viii"]),
    );
}

class GenerationIii {
    Colosseum colosseum;
    Colosseum emerald;
    Colosseum fireredLeafgreen;
    Colosseum rubySaphire;
    Colosseum xd;

    GenerationIii({
        required this.colosseum,
        required this.emerald,
        required this.fireredLeafgreen,
        required this.rubySaphire,
        required this.xd,
    });

    factory GenerationIii.fromJson(Map<String, dynamic> json) => GenerationIii(
        colosseum: Colosseum.fromJson(json["colosseum"]),
        emerald: Colosseum.fromJson(json["emerald"]),
        fireredLeafgreen: Colosseum.fromJson(json["firered-leafgreen"]),
        rubySaphire: Colosseum.fromJson(json["ruby-saphire"]),
        xd: Colosseum.fromJson(json["xd"]),
    );
}

class Colosseum {
    String nameIcon;

    Colosseum({
        required this.nameIcon,
    });

    factory Colosseum.fromJson(Map<String, dynamic> json) => Colosseum(
        nameIcon: json["name_icon"],
    );
}

class GenerationIv {
    Colosseum diamondPearl;
    Colosseum heartgoldSoulsilver;
    Colosseum platinum;

    GenerationIv({
        required this.diamondPearl,
        required this.heartgoldSoulsilver,
        required this.platinum,
    });

    factory GenerationIv.fromJson(Map<String, dynamic> json) => GenerationIv(
        diamondPearl: Colosseum.fromJson(json["diamond-pearl"]),
        heartgoldSoulsilver: Colosseum.fromJson(json["heartgold-soulsilver"]),
        platinum: Colosseum.fromJson(json["platinum"]),
    );
}

class GenerationIx {
    Colosseum scarletViolet;

    GenerationIx({
        required this.scarletViolet,
    });

    factory GenerationIx.fromJson(Map<String, dynamic> json) => GenerationIx(
        scarletViolet: Colosseum.fromJson(json["scarlet-violet"]),
    );
}

class GenerationV {
    Colosseum black2White2;
    Colosseum blackWhite;

    GenerationV({
        required this.black2White2,
        required this.blackWhite,
    });

    factory GenerationV.fromJson(Map<String, dynamic> json) => GenerationV(
        black2White2: Colosseum.fromJson(json["black-2-white-2"]),
        blackWhite: Colosseum.fromJson(json["black-white"]),
    );
}

class GenerationVii {
    Colosseum letsGoPikachuLetsGoEevee;
    Colosseum sunMoon;
    Colosseum ultraSunUltraMoon;

    GenerationVii({
        required this.letsGoPikachuLetsGoEevee,
        required this.sunMoon,
        required this.ultraSunUltraMoon,
    });

    factory GenerationVii.fromJson(Map<String, dynamic> json) => GenerationVii(
        letsGoPikachuLetsGoEevee: Colosseum.fromJson(json["lets-go-pikachu-lets-go-eevee"]),
        sunMoon: Colosseum.fromJson(json["sun-moon"]),
        ultraSunUltraMoon: Colosseum.fromJson(json["ultra-sun-ultra-moon"]),
    );
}

class GenerationViii {
    Colosseum brilliantDiamondAndShiningPearl;
    Colosseum legendsArceus;
    Colosseum swordShield;

    GenerationViii({
        required this.brilliantDiamondAndShiningPearl,
        required this.legendsArceus,
        required this.swordShield,
    });

    factory GenerationViii.fromJson(Map<String, dynamic> json) => GenerationViii(
        brilliantDiamondAndShiningPearl: Colosseum.fromJson(json["brilliant-diamond-and-shining-pearl"]),
        legendsArceus: Colosseum.fromJson(json["legends-arceus"]),
        swordShield: Colosseum.fromJson(json["sword-shield"]),
    );
}
