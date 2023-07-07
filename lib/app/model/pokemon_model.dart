// To parse this JSON data, do
//
//     final pokemonModel = pokemonModelFromJson(jsonString);

import 'dart:convert';

class PokemonModel {
  final Data data;

  PokemonModel({
    required this.data,
  });

  factory PokemonModel.fromRawJson(String str) =>
      PokemonModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PokemonModel.fromJson(Map<String, dynamic> json) => PokemonModel(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  final List<Pokemon> pokemons;

  Data({
    required this.pokemons,
  });

  factory Data.fromRawJson(String str) => Data.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        pokemons: List<Pokemon>.from(
            json["pokemons"].map((x) => Pokemon.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "pokemons": List<dynamic>.from(pokemons.map((x) => x.toJson())),
      };
}

class Pokemon {
  final String id;
  final String number;
  final String name;
  final String classification;
  final List<String> types;
  final List<String> resistant;
  final List<String> weaknesses;
  final double fleeRate;
  final int maxCp;
  final int maxHp;
  final String image;

  Pokemon({
    required this.id,
    required this.number,
    required this.name,
    required this.classification,
    required this.types,
    required this.resistant,
    required this.weaknesses,
    required this.fleeRate,
    required this.maxCp,
    required this.maxHp,
    required this.image,
  });

  factory Pokemon.fromRawJson(String str) => Pokemon.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pokemon.fromJson(Map<String, dynamic> json) => Pokemon(
        id: json["id"],
        number: json["number"],
        name: json["name"],
        classification: json["classification"],
        types: List<String>.from(json["types"].map((x) => x)),
        resistant: List<String>.from(json["resistant"].map((x) => x)),
        weaknesses: List<String>.from(json["weaknesses"].map((x) => x)),
        fleeRate: json["fleeRate"]?.toDouble(),
        maxCp: json["maxCP"],
        maxHp: json["maxHP"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "number": number,
        "name": name,
        "classification": classification,
        "types": List<dynamic>.from(types.map((x) => x)),
        "resistant": List<dynamic>.from(resistant.map((x) => x)),
        "weaknesses": List<dynamic>.from(weaknesses.map((x) => x)),
        "fleeRate": fleeRate,
        "maxCP": maxCp,
        "maxHP": maxHp,
        "image": image,
      };
}
