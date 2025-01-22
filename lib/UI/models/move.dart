// To parse this JSON data, do
//
//     final move = moveFromJson(jsonString);

import 'dart:convert';

import 'package:ejemplo_de_pokedex/UI/models/name_url.dart';

Move moveFromJson(String str) => Move.fromJson(json.decode(str));

class Move {
    int? accuracy;
    ContestCombos? contestCombos;
    ContestEffect? contestEffect;
    NameUrl contestType;
    NameUrl damageClass;
    int? effectChance;
    List<EffectChange>? effectChanges;
    List<MoveEffectEntry> effectEntries;
    List<FlavorTextEntry> flavorTextEntries;
    NameUrl generation;
    int id;
    List<NameUrl> learnedByPokemon;
    List<Machine>? machines;
    Meta meta;
    String name;
    List<Name> names;
    List<PastValue> pastValues;
    int? power;
    int pp;
    int priority;
    List<StatChange>? statChanges;
    ContestEffect? superContestEffect;
    NameUrl target;
    NameUrl type;

    Move({
        this.accuracy,
        this.contestCombos,
        this.contestEffect,
        required this.contestType,
        required this.damageClass,
        this.effectChance,
        this.effectChanges,
        required this.effectEntries,
        required this.flavorTextEntries,
        required this.generation,
        required this.id,
        required this.learnedByPokemon,
        this.machines,
        required this.meta,
        required this.name,
        required this.names,
        required this.pastValues,
        this.power,
        required this.pp,
        required this.priority,
        this.statChanges,
        this.superContestEffect,
        required this.target,
        required this.type,
    });

    factory Move.fromJson(Map<String, dynamic> json) => Move(
        accuracy: json["accuracy"],
        contestCombos: ContestCombos.fromJson(json["contest_combos"]),
        contestEffect: ContestEffect.fromJson(json["contest_effect"]),
        contestType: NameUrl.fromJson(json["contest_type"]),
        damageClass: NameUrl.fromJson(json["damage_class"]),
        effectChance: json["effect_chance"],
        effectChanges: List<EffectChange>.from(json["effect_changes"].map((x) => EffectChange.fromJson(x))),
        effectEntries: List<MoveEffectEntry>.from(json["effect_entries"].map((x) => MoveEffectEntry.fromJson(x))),
        flavorTextEntries: List<FlavorTextEntry>.from(json["flavor_text_entries"].map((x) => FlavorTextEntry.fromJson(x))),
        generation: NameUrl.fromJson(json["generation"]),
        id: json["id"],
        learnedByPokemon: List<NameUrl>.from(json["learned_by_pokemon"].map((x) => NameUrl.fromJson(x))),
        machines: List<Machine>.from(json["machines"].map((x) => Machine.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
        name: json["name"],
        names: List<Name>.from(json["names"].map((x) => Name.fromJson(x))),
        pastValues: List<PastValue>.from(json["past_values"].map((x) => PastValue.fromJson(x))),
        power: json["power"],
        pp: json["pp"],
        priority: json["priority"],
        statChanges: List<StatChange>.from(json["stat_changes"].map((x) => StatChange.fromJson(x))),
        superContestEffect: ContestEffect.fromJson(json["super_contest_effect"]),
        target: NameUrl.fromJson(json["target"]),
        type: NameUrl.fromJson(json["type"]),
    );
}

class ContestCombos {
    Normal normal;
    Normal contestCombosSuper;

    ContestCombos({
        required this.normal,
        required this.contestCombosSuper,
    });

    factory ContestCombos.fromJson(Map<String, dynamic> json) => ContestCombos(
        normal: Normal.fromJson(json["normal"]),
        contestCombosSuper: Normal.fromJson(json["super"]),
    );
}

class Normal {
    List<NameUrl> useAfter;
    List<NameUrl> useBefore;

    Normal({
        required this.useAfter,
        required this.useBefore,
    });

    factory Normal.fromJson(Map<String, dynamic> json) => Normal(
        useAfter: List<NameUrl>.from(json["use_after"].map((x) => NameUrl.fromJson(x))),
        useBefore: List<NameUrl>.from(json["use_before"].map((x) => NameUrl.fromJson(x))),
    );
}

class ContestEffect {
    String url;

    ContestEffect({
        required this.url,
    });

    factory ContestEffect.fromJson(Map<String, dynamic> json) => ContestEffect(
        url: json["url"],
    );
}

class EffectChange {
    List<EffectChangeEffectEntry> effectEntries;
    NameUrl versionGroup;

    EffectChange({
        required this.effectEntries,
        required this.versionGroup,
    });

    factory EffectChange.fromJson(Map<String, dynamic> json) => EffectChange(
        effectEntries: List<EffectChangeEffectEntry>.from(json["effect_entries"].map((x) => EffectChangeEffectEntry.fromJson(x))),
        versionGroup: NameUrl.fromJson(json["version_group"]),
    );
}

class EffectChangeEffectEntry {
    String effect;
    NameUrl language;

    EffectChangeEffectEntry({
        required this.effect,
        required this.language,
    });

    factory EffectChangeEffectEntry.fromJson(Map<String, dynamic> json) => EffectChangeEffectEntry(
        effect: json["effect"],
        language: NameUrl.fromJson(json["language"]),
    );
}

class MoveEffectEntry {
    String effect;
    NameUrl language;
    String shortEffect;

    MoveEffectEntry({
        required this.effect,
        required this.language,
        required this.shortEffect,
    });

    factory MoveEffectEntry.fromJson(Map<String, dynamic> json) => MoveEffectEntry(
        effect: json["effect"],
        language: NameUrl.fromJson(json["language"]),
        shortEffect: json["short_effect"],
    );
}

class FlavorTextEntry {
    String flavorText;
    NameUrl language;
    NameUrl versionGroup;

    FlavorTextEntry({
        required this.flavorText,
        required this.language,
        required this.versionGroup,
    });

    factory FlavorTextEntry.fromJson(Map<String, dynamic> json) => FlavorTextEntry(
        flavorText: json["flavor_text"],
        language: NameUrl.fromJson(json["language"]),
        versionGroup: NameUrl.fromJson(json["version_group"]),
    );
}

class Machine {
    ContestEffect machine;
    NameUrl versionGroup;

    Machine({
        required this.machine,
        required this.versionGroup,
    });

    factory Machine.fromJson(Map<String, dynamic> json) => Machine(
        machine: ContestEffect.fromJson(json["machine"]),
        versionGroup: NameUrl.fromJson(json["version_group"]),
    );
}

class Meta {
    NameUrl ailment;
    int ailmentChance;
    NameUrl category;
    int critRate;
    int drain;
    int flinchChance;
    int healing;
    dynamic maxHits;
    dynamic maxTurns;
    dynamic minHits;
    dynamic minTurns;
    int statChance;

    Meta({
        required this.ailment,
        required this.ailmentChance,
        required this.category,
        required this.critRate,
        required this.drain,
        required this.flinchChance,
        required this.healing,
        required this.maxHits,
        required this.maxTurns,
        required this.minHits,
        required this.minTurns,
        required this.statChance,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        ailment: NameUrl.fromJson(json["ailment"]),
        ailmentChance: json["ailment_chance"],
        category: NameUrl.fromJson(json["category"]),
        critRate: json["crit_rate"],
        drain: json["drain"],
        flinchChance: json["flinch_chance"],
        healing: json["healing"],
        maxHits: json["max_hits"],
        maxTurns: json["max_turns"],
        minHits: json["min_hits"],
        minTurns: json["min_turns"],
        statChance: json["stat_chance"],
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

class PastValue {
    dynamic accuracy;
    dynamic effectChance;
    List<dynamic> effectEntries;
    dynamic power;
    int pp;
    dynamic type;
    NameUrl versionGroup;

    PastValue({
        required this.accuracy,
        required this.effectChance,
        required this.effectEntries,
        required this.power,
        required this.pp,
        required this.type,
        required this.versionGroup,
    });

    factory PastValue.fromJson(Map<String, dynamic> json) => PastValue(
        accuracy: json["accuracy"],
        effectChance: json["effect_chance"],
        effectEntries: List<dynamic>.from(json["effect_entries"].map((x) => x)),
        power: json["power"],
        pp: json["pp"],
        type: json["type"],
        versionGroup: NameUrl.fromJson(json["version_group"]),
    );
}

class StatChange {
    int change;
    NameUrl stat;

    StatChange({
        required this.change,
        required this.stat,
    });

    factory StatChange.fromJson(Map<String, dynamic> json) => StatChange(
        change: json["change"],
        stat: NameUrl.fromJson(json["stat"]),
    );
}
