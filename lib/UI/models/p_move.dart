// To parse this JSON data, do
//
//     final PMove = PMoveFromJson(jsonString);

import 'dart:convert';

import 'package:ejemplo_de_pokedex/UI/models/name_url.dart';

PMove pMoveFromJson(String str) => PMove.fromJson(json.decode(str));

class PMove {
    int? accuracy;
    ContestCombos? contestCombos;
    ContestEffect? contestEffect;
    NameUrl? contestType;
    NameUrl damageClass;
    int? effectChance;
    List<EffectChange>? effectChanges;
    List<PMoveEffectEntry>? effectEntries;
    List<FlavorTextEntry>? flavorTextEntries;
    NameUrl generation;
    int id;
    List<NameUrl> learnedByPokemon;
    List<Machine>? machines;
    Meta? meta;
    String name;
    List<Name> names;
    List<PastValue>? pastValues;
    int? power;
    int pp;
    int? priority;
    List<StatChange>? statChanges;
    ContestEffect? superContestEffect;
    NameUrl target;
    NameUrl type;

    PMove({
        this.accuracy,
        this.contestCombos,
        this.contestEffect,
        this.contestType,
        required this.damageClass,
        this.effectChance,
        this.effectChanges,
        this.effectEntries,
        this.flavorTextEntries,
        required this.generation,
        required this.id,
        required this.learnedByPokemon,
        this.machines,
        this.meta,
        required this.name,
        required this.names,
        this.pastValues,
        this.power,
        required this.pp,
        this.priority,
        this.statChanges,
        this.superContestEffect,
        required this.target,
        required this.type,
    });

    factory PMove.fromJson(Map<String, dynamic> json) => PMove(
        accuracy: json["accuracy"] ?? 0,
        contestCombos: json["contest_combos"] == null ? null : ContestCombos.fromJson(json["contest_combos"]),
        contestEffect: json["contest_effect"] == null ? null : ContestEffect.fromJson(json["contest_effect"]),
        contestType: json["contest_type"] == null ? null : NameUrl.fromJson(json["contest_type"]),
        damageClass: NameUrl.fromJson(json["damage_class"]),
        effectChance: json["effect_chance"]?? 0,
        effectChanges: json["effect_changes"]== null ? [] :List<EffectChange>.from(json["effect_changes"].map((x) => EffectChange.fromJson(x))),
        effectEntries: json["effect_entries"]  == null ? null :List<PMoveEffectEntry>.from(json["effect_entries"].map((x) => PMoveEffectEntry.fromJson(x))),
        flavorTextEntries: json["flavor_text_entries"]  == null ? null :List<FlavorTextEntry>.from(json["flavor_text_entries"].map((x) => FlavorTextEntry.fromJson(x))),
        generation: NameUrl.fromJson(json["generation"]),
        id: json["id"],
        learnedByPokemon: List<NameUrl>.from(json["learned_by_pokemon"].map((x) => NameUrl.fromJson(x))),
        machines: json["machines"] == null ? null : List<Machine>.from(json["machines"].map((x) => Machine.fromJson(x))),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
        name: json["name"],
        names: List<Name>.from(json["names"].map((x) => Name.fromJson(x))),
        pastValues: json["past_values"] == null ? null :List<PastValue>.from(json["past_values"].map((x) => PastValue.fromJson(x))),
        power: json["power"]?? 0,
        pp: json["pp"],
        priority: json["priority"]?? 0,
        statChanges: json["stat_changes"]== null ? null : List<StatChange>.from(json["stat_changes"].map((x) => StatChange.fromJson(x))),
        superContestEffect: json["super_contest_effect"]== null ? null : ContestEffect.fromJson(json["super_contest_effect"]),
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
    List<NameUrl>? useAfter;
    List<NameUrl>? useBefore;

    Normal({
        this.useAfter,
        this.useBefore,
    });

    factory Normal.fromJson(Map<String, dynamic> json) => Normal(
        useAfter: json["use_after"] == null ? null : List<NameUrl>.from(json["use_after"].map((x) => NameUrl.fromJson(x))),
        useBefore: json["use_before"] == null ? null : List<NameUrl>.from(json["use_before"].map((x) => NameUrl.fromJson(x))),
    );
}

class ContestEffect {
    String? url;

    ContestEffect({
        this.url,
    });

    factory ContestEffect.fromJson(Map<String, dynamic> json) => ContestEffect(
        url: json["url"] ?? '',
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

class PMoveEffectEntry {
    String effect;
    NameUrl language;
    String shortEffect;

    PMoveEffectEntry({
        required this.effect,
        required this.language,
        required this.shortEffect,
    });

    factory PMoveEffectEntry.fromJson(Map<String, dynamic> json) => PMoveEffectEntry(
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
    int? ailmentChance;
    NameUrl category;
    int? critRate;
    int? drain;
    int? flinchChance;
    int? healing;
    int? maxHits;
    int? maxTurns;
    int? minHits;
    int? minTurns;
    int? statChance;

    Meta({
        required this.ailment,
        this.ailmentChance,
        required this.category,
        this.critRate,
        this.drain,
        this.flinchChance,
        this.healing,
        this.maxHits,
        this.maxTurns,
        this.minHits,
        this.minTurns,
        this.statChance,
    });

    factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        ailment: NameUrl.fromJson(json["ailment"]),
        ailmentChance: json["ailment_chance"]?? 0,
        category: NameUrl.fromJson(json["category"]),
        critRate: json["crit_rate"]?? 0,
        drain: json["drain"]?? 0,
        flinchChance: json["flinch_chance"]??0,
        healing: json["healing"]?? 0,
        maxHits: json["max_hits"]?? 0,
        maxTurns: json["max_turns"]?? 0,
        minHits: json["min_hits"]?? 0,
        minTurns: json["min_turns"]?? 0,
        statChance: json["stat_chance"]?? 0,
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
    int? accuracy;
    int? effectChance;
    List<dynamic> effectEntries;
    int? power;
    int? pp;
    NameUrl? type;
    NameUrl versionGroup;

    PastValue({
        this.accuracy,
        this.effectChance,
        required this.effectEntries,
        this.power,
        this.pp,
        this.type,
        required this.versionGroup,
    });

    factory PastValue.fromJson(Map<String, dynamic> json) => PastValue(
        accuracy: json["accuracy"]?? 0,
        effectChance: json["effect_chance"]?? 0,
        effectEntries: List<dynamic>.from(json["effect_entries"].map((x) => x)),
        power: json["power"]?? 0,
        pp: json["pp"]?? 0,
        type: json["type"] == null ? null : NameUrl.fromJson(json["type"]),
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
