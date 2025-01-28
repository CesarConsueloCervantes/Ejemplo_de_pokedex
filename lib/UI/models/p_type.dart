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
    NameUrl pokemon;
    int slot;

    TPokemon({
        required this.pokemon,
        required this.slot,
    });

    factory TPokemon.fromJson(Map<String, dynamic> json) => TPokemon(
        pokemon: NameUrl.fromJson(json["TPokemon"]),
        slot: json["slot"],
    );
}

class TSprites {
    TGenerationIii generationIii;
    TGenerationIv generationIv;
    TGenerationIx generationIx;
    TGenerationV generationV;
    Map<String, SpriteIcon> generationVi;
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
        generationVi: Map.from(json["generation-vi"]).map((k, v) => MapEntry<String, SpriteIcon>(k, SpriteIcon.fromJson(v))),
        generationVii: TGenerationVii.fromJson(json["generation-vii"]),
        generationViii: TGenerationViii.fromJson(json["generation-viii"]),
    );
}

class TGenerationIii {
    SpriteIcon colosseum;
    SpriteIcon emerald;
    SpriteIcon fireredLeafgreen;
    SpriteIcon rubySaphire;
    SpriteIcon xd;

    TGenerationIii({
        required this.colosseum,
        required this.emerald,
        required this.fireredLeafgreen,
        required this.rubySaphire,
        required this.xd,
    });

    factory TGenerationIii.fromJson(Map<String, dynamic> json) => TGenerationIii(
        colosseum: SpriteIcon.fromJson(json["SpriteIcon"]),
        emerald: SpriteIcon.fromJson(json["emerald"]),
        fireredLeafgreen: SpriteIcon.fromJson(json["firered-leafgreen"]),
        rubySaphire: SpriteIcon.fromJson(json["ruby-saphire"]),
        xd: SpriteIcon.fromJson(json["xd"]),
    );
}

class SpriteIcon {
    String? nameIcon;

    SpriteIcon({
        this.nameIcon,
    });

    factory SpriteIcon.fromJson(Map<String, dynamic> json) => SpriteIcon(
        nameIcon: json["name_icon"] ?? json["name_icon"],
    );
}

class TGenerationIv {
    SpriteIcon diamondPearl;
    SpriteIcon heartgoldSoulsilver;
    SpriteIcon platinum;

    TGenerationIv({
        required this.diamondPearl,
        required this.heartgoldSoulsilver,
        required this.platinum,
    });

    factory TGenerationIv.fromJson(Map<String, dynamic> json) => TGenerationIv(
        diamondPearl: SpriteIcon.fromJson(json["diamond-pearl"]),
        heartgoldSoulsilver: SpriteIcon.fromJson(json["heartgold-soulsilver"]),
        platinum: SpriteIcon.fromJson(json["platinum"]),
    );
}

class TGenerationIx {
    SpriteIcon scarletViolet;

    TGenerationIx({
        required this.scarletViolet,
    });

    factory TGenerationIx.fromJson(Map<String, dynamic> json) => TGenerationIx(
        scarletViolet: SpriteIcon.fromJson(json["scarlet-violet"]),
    );
}

class TGenerationV {
    SpriteIcon black2White2;
    SpriteIcon blackWhite;

    TGenerationV({
        required this.black2White2,
        required this.blackWhite,
    });

    factory TGenerationV.fromJson(Map<String, dynamic> json) => TGenerationV(
        black2White2: SpriteIcon.fromJson(json["black-2-white-2"]),
        blackWhite: SpriteIcon.fromJson(json["black-white"]),
    );
}

class TGenerationVii {
    SpriteIcon letsGoPikachuLetsGoEevee;
    SpriteIcon sunMoon;
    SpriteIcon ultraSunUltraMoon;

    TGenerationVii({
        required this.letsGoPikachuLetsGoEevee,
        required this.sunMoon,
        required this.ultraSunUltraMoon,
    });

    factory TGenerationVii.fromJson(Map<String, dynamic> json) => TGenerationVii(
        letsGoPikachuLetsGoEevee: SpriteIcon.fromJson(json["lets-go-pikachu-lets-go-eevee"]),
        sunMoon: SpriteIcon.fromJson(json["sun-moon"]),
        ultraSunUltraMoon: SpriteIcon.fromJson(json["ultra-sun-ultra-moon"]),
    );
}

class TGenerationViii {
    SpriteIcon brilliantDiamondAndShiningPearl;
    SpriteIcon legendsArceus;
    SpriteIcon swordShield;

    TGenerationViii({
        required this.brilliantDiamondAndShiningPearl,
        required this.legendsArceus,
        required this.swordShield,
    });

    factory TGenerationViii.fromJson(Map<String, dynamic> json) => TGenerationViii(
        brilliantDiamondAndShiningPearl: SpriteIcon.fromJson(json["brilliant-diamond-and-shining-pearl"]),
        legendsArceus: SpriteIcon.fromJson(json["legends-arceus"]),
        swordShield: SpriteIcon.fromJson(json["sword-shield"]),
    );
}
