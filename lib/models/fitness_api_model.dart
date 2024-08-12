// To parse this JSON data, do
//
//     final fitnessApi = fitnessApiFromJson(jsonString);

import 'dart:convert';

FitnessApi fitnessApiFromJson(String str) => FitnessApi.fromJson(json.decode(str));

String fitnessApiToJson(FitnessApi data) => json.encode(data.toJson());

class FitnessApi {
  String name;
  Muscles muscles;
  List<Alternative> alternatives;
  List<Alternative> variations;
  List<Instruction> instructions;
  String bodyPart;

  FitnessApi({
    required this.name,
    required this.muscles,
    required this.alternatives,
    required this.variations,
    required this.instructions,
    required this.bodyPart,
  });

  factory FitnessApi.fromJson(Map<String, dynamic> json) => FitnessApi(
    name: json["name"],
    muscles: Muscles.fromJson(json["muscles"]),
    alternatives: List<Alternative>.from(json["alternatives"].map((x) => Alternative.fromJson(x))),
    variations: List<Alternative>.from(json["variations"].map((x) => Alternative.fromJson(x))),
    instructions: List<Instruction>.from(json["instructions"].map((x) => Instruction.fromJson(x))),
    bodyPart: json["bodyPart"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "muscles": muscles.toJson(),
    "alternatives": List<dynamic>.from(alternatives.map((x) => x.toJson())),
    "variations": List<dynamic>.from(variations.map((x) => x.toJson())),
    "instructions": List<dynamic>.from(instructions.map((x) => x.toJson())),
    "bodyPart": bodyPart,
  };
}

class Alternative {
  String id;
  String name;

  Alternative({
    required this.id,
    required this.name,
  });

  factory Alternative.fromJson(Map<String, dynamic> json) => Alternative(
    id: json["id"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
  };
}

class Instruction {
  int order;
  String description;

  Instruction({
    required this.order,
    required this.description,
  });

  factory Instruction.fromJson(Map<String, dynamic> json) => Instruction(
    order: json["order"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "order": order,
    "description": description,
  };
}

class Muscles {
  List<Stabilizer> synergist;
  List<Stabilizer> stabilizer;
  List<Stabilizer> target;

  Muscles({
    required this.synergist,
    required this.stabilizer,
    required this.target,
  });

  factory Muscles.fromJson(Map<String, dynamic> json) => Muscles(
    synergist: List<Stabilizer>.from(json["Synergist"].map((x) => Stabilizer.fromJson(x))),
    stabilizer: List<Stabilizer>.from(json["Stabilizer"].map((x) => Stabilizer.fromJson(x))),
    target: List<Stabilizer>.from(json["Target"].map((x) => Stabilizer.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "Synergist": List<dynamic>.from(synergist.map((x) => x.toJson())),
    "Stabilizer": List<dynamic>.from(stabilizer.map((x) => x.toJson())),
    "Target": List<dynamic>.from(target.map((x) => x.toJson())),
  };
}

class Stabilizer {
  List<String> heads;
  String name;
  dynamic group;

  Stabilizer({
    required this.heads,
    required this.name,
    required this.group,
  });

  factory Stabilizer.fromJson(Map<String, dynamic> json) => Stabilizer(
    heads: List<String>.from(json["heads"].map((x) => x)),
    name: json["name"],
    group: json["group"],
  );

  Map<String, dynamic> toJson() => {
    "heads": List<dynamic>.from(heads.map((x) => x)),
    "name": name,
    "group": group,
  };
}
