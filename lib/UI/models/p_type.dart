// To parse this JSON data, do
//
//     final PType = PTypeFromJson(jsonString);

import 'dart:convert';

import 'package:ejemplo_de_pokedex/UI/models/name_url.dart';

PType PTypeFromJson(String str) => PType.fromJson(json.decode(str));

class PType {
    DamageRelations damageRelations;
    List<GameIndex> gameIndices;
    NameUrl generation;
    int id;
    NameUrl moveDamageClass;
    List<NameUrl> moves;
    String name;
    List<Name> names;
    List<dynamic> pastDamageRelations;
    List<TPokemon> Pokemon;
    Sprites sprites;

    PType({
        required this.damageRelations,
        required this.gameIndices,
        required this.generation,
        required this.id,
        required this.moveDamageClass,
        required this.moves,
        required this.name,
        required this.names,
        required this.pastDamageRelations,
        required this.Pokemon,
        required this.sprites,
    });

    factory PType.fromJson(Map<String, dynamic> json) => PType(
        damageRelations: DamageRelations.fromJson(json["damage_relations"]),
        gameIndices: List<GameIndex>.from(json["game_indices"].map((x) => GameIndex.fromJson(x))),
        generation: NameUrl.fromJson(json["generation"]),
        id: json["id"],
        moveDamageClass: NameUrl.fromJson(json["move_damage_class"]),
        moves: List<NameUrl>.from(json["moves"].map((x) => NameUrl.fromJson(x))),
        name: json["name"],
        names: List<Name>.from(json["names"].map((x) => Name.fromJson(x))),
        pastDamageRelations: List<dynamic>.from(json["past_damage_relations"].map((x) => x)),
        Pokemon: List<TPokemon>.from(json["TPokemon"].map((x) => TPokemon.fromJson(x))),
        sprites: Sprites.fromJson(json["sprites"]),
    );
}

class DamageRelations {
    List<NameUrl> doubleDamageFrom;
    List<dynamic> doubleDamageTo;
    List<dynamic> halfDamageFrom;
    List<NameUrl> halfDamageTo;
    List<NameUrl> noDamageFrom;
    List<NameUrl> noDamageTo;

    DamageRelations({
        required this.doubleDamageFrom,
        required this.doubleDamageTo,
        required this.halfDamageFrom,
        required this.halfDamageTo,
        required this.noDamageFrom,
        required this.noDamageTo,
    });

    factory DamageRelations.fromJson(Map<String, dynamic> json) => DamageRelations(
        doubleDamageFrom: List<NameUrl>.from(json["double_damage_from"].map((x) => NameUrl.fromJson(x))),
        doubleDamageTo: List<dynamic>.from(json["double_damage_to"].map((x) => x)),
        halfDamageFrom: List<dynamic>.from(json["half_damage_from"].map((x) => x)),
        halfDamageTo: List<NameUrl>.from(json["half_damage_to"].map((x) => NameUrl.fromJson(x))),
        noDamageFrom: List<NameUrl>.from(json["no_damage_from"].map((x) => NameUrl.fromJson(x))),
        noDamageTo: List<NameUrl>.from(json["no_damage_to"].map((x) => NameUrl.fromJson(x))),
    );
}

class GameIndex {
    int gameIndex;
    NameUrl generation;

    GameIndex({
        required this.gameIndex,
        required this.generation,
    });

    factory GameIndex.fromJson(Map<String, dynamic> json) => GameIndex(
        gameIndex: json["game_index"],
        generation: NameUrl.fromJson(json["generation"]),
    );
}

class Name {
    NameUrl language;
    String name;

    Name({
        required this.language,
        required this.name,
    });

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        language: NameUrl.fromJson(json["language"]),
        name: json["name"],
    );
}

class TPokemon {
    NameUrl Pokemon;
    int slot;

    TPokemon({
        required this.Pokemon,
        required this.slot,
    });

    factory TPokemon.fromJson(Map<String, dynamic> json) => TPokemon(
        Pokemon: NameUrl.fromJson(json["TPokemon"]),
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
