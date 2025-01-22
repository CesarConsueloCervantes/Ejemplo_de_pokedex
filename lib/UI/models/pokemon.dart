// To parse this JSON data, do
//
//     final pokemon = pokemonFromJson(jsonString);

import 'dart:convert';

Pokemon pokemonFromJson(String str) => Pokemon.fromJson(json.decode(str));

class Pokemon {
    List<Ability> abilities;
    int baseExperience;
    Cries cries;
    List<Species> forms;
    List<GameIndex> gameIndices;
    int height;
    List<HeldItem> heldItems;
    int id;
    bool isDefault;
    String locationAreaEncounters;
    List<Move> moves;
    String name;
    int order;
    List<dynamic> pastAbilities;
    List<dynamic> pastTypes;
    Species species;
    Sprites sprites;
    List<Stat> stats;
    List<Type> types;
    int weight;

    Pokemon({
        required this.abilities,
        required this.baseExperience,
        required this.cries,
        required this.forms,
        required this.gameIndices,
        required this.height,
        required this.heldItems,
        required this.id,
        required this.isDefault,
        required this.locationAreaEncounters,
        required this.moves,
        required this.name,
        required this.order,
        required this.pastAbilities,
        required this.pastTypes,
        required this.species,
        required this.sprites,
        required this.stats,
        required this.types,
        required this.weight,
    });

    factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        abilities: List<Ability>.from(json["abilities"].map((x) => Ability.fromJson(x))),
        baseExperience: json["base_experience"],
        cries: Cries.fromJson(json["cries"]),
        forms: List<Species>.from(json["forms"].map((x) => Species.fromJson(x))),
        gameIndices: List<GameIndex>.from(json["game_indices"].map((x) => GameIndex.fromJson(x))),
        height: json["height"],
        heldItems: List<HeldItem>.from(json["held_items"].map((x) => HeldItem.fromJson(x))),
        id: json["id"],
        isDefault: json["is_default"],
        locationAreaEncounters: json["location_area_encounters"],
        moves: List<Move>.from(json["moves"].map((x) => Move.fromJson(x))),
        name: json["name"],
        order: json["order"],
        pastAbilities: List<dynamic>.from(json["past_abilities"].map((x) => x)),
        pastTypes: List<dynamic>.from(json["past_types"].map((x) => x)),
        species: Species.fromJson(json["species"]),
        sprites: Sprites.fromJson(json["sprites"]),
        stats: List<Stat>.from(json["stats"].map((x) => Stat.fromJson(x))),
        types: List<Type>.from(json["types"].map((x) => Type.fromJson(x))),
        weight: json["weight"],
    );
}

class Ability {
    Species ability;
    bool isHidden;
    int slot;

    Ability({
        required this.ability,
        required this.isHidden,
        required this.slot,
    });

    factory Ability.fromJson(Map<String, dynamic> json) => Ability(
        ability: Species.fromJson(json["ability"]),
        isHidden: json["is_hidden"],
        slot: json["slot"],
    );
}

class Species {
    String name;
    String url;

    Species({
        required this.name,
        required this.url,
    });

    factory Species.fromJson(Map<String, dynamic> json) => Species(
        name: json["name"],
        url: json["url"],
    );
}

class Cries {
    String latest;
    String legacy;

    Cries({
        required this.latest,
        required this.legacy,
    });

    factory Cries.fromJson(Map<String, dynamic> json) => Cries(
        latest: json["latest"],
        legacy: json["legacy"],
    );
}

class GameIndex {
    int gameIndex;
    Species version;

    GameIndex({
        required this.gameIndex,
        required this.version,
    });

    factory GameIndex.fromJson(Map<String, dynamic> json) => GameIndex(
        gameIndex: json["game_index"],
        version: Species.fromJson(json["version"]),
    );
}

class HeldItem {
    Species item;
    List<VersionDetail> versionDetails;

    HeldItem({
        required this.item,
        required this.versionDetails,
    });

    factory HeldItem.fromJson(Map<String, dynamic> json) => HeldItem(
        item: Species.fromJson(json["item"]),
        versionDetails: List<VersionDetail>.from(json["version_details"].map((x) => VersionDetail.fromJson(x))),
    );
}

class VersionDetail {
    int rarity;
    Species version;

    VersionDetail({
        required this.rarity,
        required this.version,
    });

    factory VersionDetail.fromJson(Map<String, dynamic> json) => VersionDetail(
        rarity: json["rarity"],
        version: Species.fromJson(json["version"]),
    );
}

class Move {
    Species move;
    List<VersionGroupDetail> versionGroupDetails;

    Move({
        required this.move,
        required this.versionGroupDetails,
    });

    factory Move.fromJson(Map<String, dynamic> json) => Move(
        move: Species.fromJson(json["move"]),
        versionGroupDetails: List<VersionGroupDetail>.from(json["version_group_details"].map((x) => VersionGroupDetail.fromJson(x))),
    );
}

class VersionGroupDetail {
    int levelLearnedAt;
    Species moveLearnMethod;
    Species versionGroup;

    VersionGroupDetail({
        required this.levelLearnedAt,
        required this.moveLearnMethod,
        required this.versionGroup,
    });

    factory VersionGroupDetail.fromJson(Map<String, dynamic> json) => VersionGroupDetail(
        levelLearnedAt: json["level_learned_at"],
        moveLearnMethod: Species.fromJson(json["move_learn_method"]),
        versionGroup: Species.fromJson(json["version_group"]),
    );
}

class GenerationV {
    Sprites blackWhite;

    GenerationV({
        required this.blackWhite,
    });

    factory GenerationV.fromJson(Map<String, dynamic> json) => GenerationV(
        blackWhite: Sprites.fromJson(json["black-white"]),
    );
}

class GenerationIv {
    Sprites diamondPearl;
    Sprites heartgoldSoulsilver;
    Sprites platinum;

    GenerationIv({
        required this.diamondPearl,
        required this.heartgoldSoulsilver,
        required this.platinum,
    });

    factory GenerationIv.fromJson(Map<String, dynamic> json) => GenerationIv(
        diamondPearl: Sprites.fromJson(json["diamond-pearl"]),
        heartgoldSoulsilver: Sprites.fromJson(json["heartgold-soulsilver"]),
        platinum: Sprites.fromJson(json["platinum"]),
    );
}

class Versions {
    GenerationI generationI;
    GenerationIi generationIi;
    GenerationIii generationIii;
    GenerationIv generationIv;
    GenerationV generationV;
    Map<String, Home> generationVi;
    GenerationVii generationVii;
    GenerationViii generationViii;

    Versions({
        required this.generationI,
        required this.generationIi,
        required this.generationIii,
        required this.generationIv,
        required this.generationV,
        required this.generationVi,
        required this.generationVii,
        required this.generationViii,
    });

    factory Versions.fromJson(Map<String, dynamic> json) => Versions(
        generationI: GenerationI.fromJson(json["generation-i"]),
        generationIi: GenerationIi.fromJson(json["generation-ii"]),
        generationIii: GenerationIii.fromJson(json["generation-iii"]),
        generationIv: GenerationIv.fromJson(json["generation-iv"]),
        generationV: GenerationV.fromJson(json["generation-v"]),
        generationVi: Map.from(json["generation-vi"]).map((k, v) => MapEntry<String, Home>(k, Home.fromJson(v))),
        generationVii: GenerationVii.fromJson(json["generation-vii"]),
        generationViii: GenerationViii.fromJson(json["generation-viii"]),
    );
}

class Other {
    DreamWorld dreamWorld;
    Home home;
    OfficialArtwork officialArtwork;
    Sprites showdown;

    Other({
        required this.dreamWorld,
        required this.home,
        required this.officialArtwork,
        required this.showdown,
    });

    factory Other.fromJson(Map<String, dynamic> json) => Other(
        dreamWorld: DreamWorld.fromJson(json["dream_world"]),
        home: Home.fromJson(json["home"]),
        officialArtwork: OfficialArtwork.fromJson(json["official-artwork"]),
        showdown: Sprites.fromJson(json["showdown"]),
    );
}

class Sprites {
    String backDefault;
    String? backFemale;
    String backShiny;
    String? backShinyFemale;
    String frontDefault;
    String? frontFemale;
    String frontShiny;
    String? frontShinyFemale;
    Other? other;
    Versions? versions;
    Sprites? animated;

    Sprites({
        required this.backDefault,
        this.backFemale,
        required this.backShiny,
        this.backShinyFemale,
        required this.frontDefault, //TODO usar este para el results screen
        this.frontFemale,
        required this.frontShiny,
        this.frontShinyFemale,
        this.other,
        this.versions,
        this.animated,
    });

    factory Sprites.fromJson(Map<String, dynamic> json) => Sprites(
        backDefault: json["back_default"],
        backFemale: json["back_female"],
        backShiny: json["back_shiny"],
        backShinyFemale: json["back_shiny_female"],
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
        frontShiny: json["front_shiny"],
        frontShinyFemale: json["front_shiny_female"],
        other: json["other"] == null ? null : Other.fromJson(json["other"]),
        versions: json["versions"] == null ? null : Versions.fromJson(json["versions"]),
        animated: json["animated"] == null ? null : Sprites.fromJson(json["animated"]),
    );
}

class GenerationI {
    RedBlue redBlue;
    RedBlue yellow;

    GenerationI({
        required this.redBlue,
        required this.yellow,
    });

    factory GenerationI.fromJson(Map<String, dynamic> json) => GenerationI(
        redBlue: RedBlue.fromJson(json["red-blue"]),
        yellow: RedBlue.fromJson(json["yellow"]),
    );
}

class RedBlue {
    String backDefault;
    String backGray;
    String backTransparent;
    String frontDefault;
    String frontGray;
    String frontTransparent;

    RedBlue({
        required this.backDefault,
        required this.backGray,
        required this.backTransparent,
        required this.frontDefault,
        required this.frontGray,
        required this.frontTransparent,
    });

    factory RedBlue.fromJson(Map<String, dynamic> json) => RedBlue(
        backDefault: json["back_default"],
        backGray: json["back_gray"],
        backTransparent: json["back_transparent"],
        frontDefault: json["front_default"],
        frontGray: json["front_gray"],
        frontTransparent: json["front_transparent"],
    );
}

class GenerationIi {
    Crystal crystal;
    Gold gold;
    Gold silver;

    GenerationIi({
        required this.crystal,
        required this.gold,
        required this.silver,
    });

    factory GenerationIi.fromJson(Map<String, dynamic> json) => GenerationIi(
        crystal: Crystal.fromJson(json["crystal"]),
        gold: Gold.fromJson(json["gold"]),
        silver: Gold.fromJson(json["silver"]),
    );
}

class Crystal {
    String backDefault;
    String backShiny;
    String backShinyTransparent;
    String backTransparent;
    String frontDefault;
    String frontShiny;
    String frontShinyTransparent;
    String frontTransparent;

    Crystal({
        required this.backDefault,
        required this.backShiny,
        required this.backShinyTransparent,
        required this.backTransparent,
        required this.frontDefault,
        required this.frontShiny,
        required this.frontShinyTransparent,
        required this.frontTransparent,
    });

    factory Crystal.fromJson(Map<String, dynamic> json) => Crystal(
        backDefault: json["back_default"],
        backShiny: json["back_shiny"],
        backShinyTransparent: json["back_shiny_transparent"],
        backTransparent: json["back_transparent"],
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
        frontShinyTransparent: json["front_shiny_transparent"],
        frontTransparent: json["front_transparent"],
    );
}

class Gold {
    String backDefault;
    String backShiny;
    String frontDefault;
    String frontShiny;
    String? frontTransparent;

    Gold({
        required this.backDefault,
        required this.backShiny,
        required this.frontDefault,
        required this.frontShiny,
        this.frontTransparent,
    });

    factory Gold.fromJson(Map<String, dynamic> json) => Gold(
        backDefault: json["back_default"],
        backShiny: json["back_shiny"],
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
        frontTransparent: json["front_transparent"],
    );
}

class GenerationIii {
    OfficialArtwork emerald;
    Gold fireredLeafgreen;
    Gold rubySapphire;

    GenerationIii({
        required this.emerald,
        required this.fireredLeafgreen,
        required this.rubySapphire,
    });

    factory GenerationIii.fromJson(Map<String, dynamic> json) => GenerationIii(
        emerald: OfficialArtwork.fromJson(json["emerald"]),
        fireredLeafgreen: Gold.fromJson(json["firered-leafgreen"]),
        rubySapphire: Gold.fromJson(json["ruby-sapphire"]),
    );
}

class OfficialArtwork {
    String frontDefault;
    String frontShiny;

    OfficialArtwork({
        required this.frontDefault,
        required this.frontShiny,
    });

    factory OfficialArtwork.fromJson(Map<String, dynamic> json) => OfficialArtwork(
        frontDefault: json["front_default"],
        frontShiny: json["front_shiny"],
    );
}

class Home {
    String frontDefault;
    String frontFemale;
    String frontShiny;
    String frontShinyFemale;

    Home({
        required this.frontDefault,
        required this.frontFemale,
        required this.frontShiny,
        required this.frontShinyFemale,
    });

    factory Home.fromJson(Map<String, dynamic> json) => Home(
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
        frontShiny: json["front_shiny"],
        frontShinyFemale: json["front_shiny_female"],
    );
}

class GenerationVii {
    DreamWorld icons;
    Home ultraSunUltraMoon;

    GenerationVii({
        required this.icons,
        required this.ultraSunUltraMoon,
    });

    factory GenerationVii.fromJson(Map<String, dynamic> json) => GenerationVii(
        icons: DreamWorld.fromJson(json["icons"]),
        ultraSunUltraMoon: Home.fromJson(json["ultra-sun-ultra-moon"]),
    );
}

class DreamWorld {
    String frontDefault;
    String? frontFemale;

    DreamWorld({
        required this.frontDefault,
        required this.frontFemale,
    });

    factory DreamWorld.fromJson(Map<String, dynamic> json) => DreamWorld(
        frontDefault: json["front_default"],
        frontFemale: json["front_female"],
    );
}

class GenerationViii {
    DreamWorld icons;

    GenerationViii({
        required this.icons,
    });

    factory GenerationViii.fromJson(Map<String, dynamic> json) => GenerationViii(
        icons: DreamWorld.fromJson(json["icons"]),
    );
}

class Stat {
    int baseStat;
    int effort;
    Species stat;

    Stat({
        required this.baseStat,
        required this.effort,
        required this.stat,
    });

    factory Stat.fromJson(Map<String, dynamic> json) => Stat(
        baseStat: json["base_stat"],
        effort: json["effort"],
        stat: Species.fromJson(json["stat"]),
    );
}

class Type {
    int slot;
    Species type;

    Type({
        required this.slot,
        required this.type,
    });

    factory Type.fromJson(Map<String, dynamic> json) => Type(
        slot: json["slot"],
        type: Species.fromJson(json["type"]),
    );
}
