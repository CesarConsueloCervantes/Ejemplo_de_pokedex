// To parse this JSON data, do
//
//     final PType = PTypeFromJson(jsonString);

import 'dart:convert';

import 'package:ejemplo_de_pokedex/UI/models/name_url.dart';

PType pTypeFromJson(String str) => PType.fromJson(json.decode(str));

class PType {
    DamageRelations damageRelations;
    List<TGameIndex> gameIndices;
    NameUrl generation;
    int id;
    NameUrl moveDamageClass;
    List<NameUrl> moves;
    String name;
    List<TName> names;
    List<dynamic> pastDamageRelations;
    List<TPokemon> pokemon;
    TSprites sprites;

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
        required this.pokemon,
        required this.sprites,
    });

    factory PType.fromJson(Map<String, dynamic> json) => PType(
        damageRelations: DamageRelations.fromJson(json["damage_relations"]),
        gameIndices: List<TGameIndex>.from(json["game_indices"].map((x) => TGameIndex.fromJson(x))),
        generation: NameUrl.fromJson(json["generation"]),
        id: json["id"],
        moveDamageClass: NameUrl.fromJson(json["move_damage_class"]),
        moves: List<NameUrl>.from(json["moves"].map((x) => NameUrl.fromJson(x))),
        name: json["name"],
        names: List<TName>.from(json["names"].map((x) => TName.fromJson(x))),
        pastDamageRelations: List<dynamic>.from(json["past_damage_relations"].map((x) => x)),
        pokemon: List<TPokemon>.from(json["TPokemon"].map((x) => TPokemon.fromJson(x))),
        sprites: TSprites.fromJson(json["sprites"]),
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

class TGameIndex {
    int gameIndex;
    NameUrl generation;

    TGameIndex({
        required this.gameIndex,
        required this.generation,
    });

    factory TGameIndex.fromJson(Map<String, dynamic> json) => TGameIndex(
        gameIndex: json["game_index"],
        generation: NameUrl.fromJson(json["generation"]),
    );
}

class TName {
    NameUrl language;
    String name;

    TName({
        required this.language,
        required this.name,
    });

    factory TName.fromJson(Map<String, dynamic> json) => TName(
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

class TSprites {
    TGenerationIii generationIii;
    TGenerationIv generationIv;
    TGenerationIx generationIx;
    TGenerationV generationV;
    Map<String, Colosseum> generationVi;
    TGenerationVii generationVii;
    TGenerationViii generationViii;

    TSprites({
        required this.generationIii,
        required this.generationIv,
        required this.generationIx,
        required this.generationV,
        required this.generationVi,
        required this.generationVii,
        required this.generationViii,
    });

    factory TSprites.fromJson(Map<String, dynamic> json) => TSprites(
        generationIii: TGenerationIii.fromJson(json["generation-iii"]),
        generationIv: TGenerationIv.fromJson(json["generation-iv"]),
        generationIx: TGenerationIx.fromJson(json["generation-ix"]),
        generationV: TGenerationV.fromJson(json["generation-v"]),
        generationVi: Map.from(json["generation-vi"]).map((k, v) => MapEntry<String, Colosseum>(k, Colosseum.fromJson(v))),
        generationVii: TGenerationVii.fromJson(json["generation-vii"]),
        generationViii: TGenerationViii.fromJson(json["generation-viii"]),
    );
}

class TGenerationIii {
    Colosseum colosseum;
    Colosseum emerald;
    Colosseum fireredLeafgreen;
    Colosseum rubySaphire;
    Colosseum xd;

    TGenerationIii({
        required this.colosseum,
        required this.emerald,
        required this.fireredLeafgreen,
        required this.rubySaphire,
        required this.xd,
    });

    factory TGenerationIii.fromJson(Map<String, dynamic> json) => TGenerationIii(
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

class TGenerationIv {
    Colosseum diamondPearl;
    Colosseum heartgoldSoulsilver;
    Colosseum platinum;

    TGenerationIv({
        required this.diamondPearl,
        required this.heartgoldSoulsilver,
        required this.platinum,
    });

    factory TGenerationIv.fromJson(Map<String, dynamic> json) => TGenerationIv(
        diamondPearl: Colosseum.fromJson(json["diamond-pearl"]),
        heartgoldSoulsilver: Colosseum.fromJson(json["heartgold-soulsilver"]),
        platinum: Colosseum.fromJson(json["platinum"]),
    );
}

class TGenerationIx {
    Colosseum scarletViolet;

    TGenerationIx({
        required this.scarletViolet,
    });

    factory TGenerationIx.fromJson(Map<String, dynamic> json) => TGenerationIx(
        scarletViolet: Colosseum.fromJson(json["scarlet-violet"]),
    );
}

class TGenerationV {
    Colosseum black2White2;
    Colosseum blackWhite;

    TGenerationV({
        required this.black2White2,
        required this.blackWhite,
    });

    factory TGenerationV.fromJson(Map<String, dynamic> json) => TGenerationV(
        black2White2: Colosseum.fromJson(json["black-2-white-2"]),
        blackWhite: Colosseum.fromJson(json["black-white"]),
    );
}

class TGenerationVii {
    Colosseum letsGoPikachuLetsGoEevee;
    Colosseum sunMoon;
    Colosseum ultraSunUltraMoon;

    TGenerationVii({
        required this.letsGoPikachuLetsGoEevee,
        required this.sunMoon,
        required this.ultraSunUltraMoon,
    });

    factory TGenerationVii.fromJson(Map<String, dynamic> json) => TGenerationVii(
        letsGoPikachuLetsGoEevee: Colosseum.fromJson(json["lets-go-pikachu-lets-go-eevee"]),
        sunMoon: Colosseum.fromJson(json["sun-moon"]),
        ultraSunUltraMoon: Colosseum.fromJson(json["ultra-sun-ultra-moon"]),
    );
}

class TGenerationViii {
    Colosseum brilliantDiamondAndShiningPearl;
    Colosseum legendsArceus;
    Colosseum swordShield;

    TGenerationViii({
        required this.brilliantDiamondAndShiningPearl,
        required this.legendsArceus,
        required this.swordShield,
    });

    factory TGenerationViii.fromJson(Map<String, dynamic> json) => TGenerationViii(
        brilliantDiamondAndShiningPearl: Colosseum.fromJson(json["brilliant-diamond-and-shining-pearl"]),
        legendsArceus: Colosseum.fromJson(json["legends-arceus"]),
        swordShield: Colosseum.fromJson(json["sword-shield"]),
    );
}
