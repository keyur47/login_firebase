// To parse this JSON data, do
//
//     final searchModel = searchModelFromJson(jsonString);

import 'dart:convert';
//
List<SearchModel> searchModelFromJson(String str) => List<SearchModel>.from(json.decode(str).map((x) => SearchModel.fromJson(x)));

String searchModelToJson(List<SearchModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

// SearchModel azizFromJson(String str) => SearchModel.fromJson(json.decode(str));
//
// String azizToJson(SearchModel data) => json.encode(data.toJson());

// class SearchModel {
//   SearchModel({
//      this.srMboSet,
//   });
//
//   Sr? srMboSet;
//
//   factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
//     srMboSet: Sr.fromJson(json["SRMboSet"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "SRMboSet": srMboSet!.toJson(),
//   };
// }
//
// import 'dart:convert';
//
// SearchModel azizFromJson(String str) => SearchModel.fromJson(json.decode(str));
//
// String azizToJson(SearchModel data) => json.encode(data.toJson());
//
// class SearchModel {
//   SearchModel({
//      this.srMboSet,
//   });
//
//   SrMboSet? srMboSet;
//
//   factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
//     srMboSet: SrMboSet.fromJson(json["SRMboSet"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "SRMboSet": srMboSet!.toJson(),
//   };
// }
//
// class SrMboSet {
//   SrMboSet({
//     required this.rsStart,
//     required this.rsCount,
//     required this.sr,
//   });
//
//   int rsStart;
//   int rsCount;
//   List<Sr> sr;
//
//   factory SrMboSet.fromJson(Map<String, dynamic> json) => SrMboSet(
//     rsStart: json["rsStart"],
//     rsCount: json["rsCount"],
//     sr: List<Sr>.from(json["SR"].map((x) => Sr.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "rsStart": rsStart,
//     "rsCount": rsCount,
//     "SR": List<dynamic>.from(sr.map((x) => x.toJson())),
//   };
// }
//

class SearchModel {
  int? id;
  bool? active;
  int? stages;
  int? boosters;
  int? costPerLaunch;
  int? successRatePct;
  DateTime? firstFlight;
  String? country;
  String? company;
  Diameter? height;
  Diameter? diameter;
  Mass? mass;
  List<PayloadWeight>? payloadWeights;
  FirstStage? firstStage;
  SecondStage? secondStage;
  Engines? engines;
  LandingLegs? landingLegs;
  List<String>? flickrImages;
  String? wikipedia;
  String? description;
  String? rocketId;
  String? rocketName;
  String? rocketType;

  SearchModel({
    this.id,
    this.active,
    this.stages,
    this.boosters,
    this.costPerLaunch,
    this.successRatePct,
    this.firstFlight,
    this.country,
    this.company,
    this.height,
    this.diameter,
    this.mass,
    this.payloadWeights,
    this.firstStage,
    this.secondStage,
    this.engines,
    this.landingLegs,
    this.flickrImages,
    this.wikipedia,
    this.description,
    this.rocketId,
    this.rocketName,
    this.rocketType,
  });

  factory SearchModel.fromJson(Map<String, dynamic> json) => SearchModel(
    id: json["id"],
    active: json["active"],
    stages: json["stages"],
    boosters: json["boosters"],
    costPerLaunch: json["cost_per_launch"],
    successRatePct: json["success_rate_pct"],
    firstFlight: DateTime.parse(json["first_flight"]),
    country: json["country"],
    company: json["company"],
    height: Diameter.fromJson(json["height"]),
    diameter: Diameter.fromJson(json["diameter"]),
    mass: Mass.fromJson(json["mass"]),
    payloadWeights: List<PayloadWeight>.from(json["payload_weights"].map((x) => PayloadWeight.fromJson(x))),
    firstStage: FirstStage.fromJson(json["first_stage"]),
    secondStage: SecondStage.fromJson(json["second_stage"]),
    engines: Engines.fromJson(json["engines"]),
    landingLegs: LandingLegs.fromJson(json["landing_legs"]),
    flickrImages: List<String>.from(json["flickr_images"].map((x) => x)),
    wikipedia: json["wikipedia"],
    description: json["description"],
    rocketId: json["rocket_id"],
    rocketName: json["rocket_name"],
    rocketType: json["rocket_type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "active": active,
    "stages": stages,
    "boosters": boosters,
    "cost_per_launch": costPerLaunch,
    "success_rate_pct": successRatePct,
    "first_flight": "${firstFlight!.year.toString().padLeft(4, '0')}-${firstFlight!.month.toString().padLeft(2, '0')}-${firstFlight!.day.toString().padLeft(2, '0')}",
    "country": country,
    "company": company,
    "height": height!.toJson(),
    "diameter": diameter!.toJson(),
    "mass": mass!.toJson(),
    "payload_weights": List<dynamic>.from(payloadWeights!.map((x) => x.toJson())),
    "first_stage": firstStage!.toJson(),
    "second_stage": secondStage!.toJson(),
    "engines": engines!.toJson(),
    "landing_legs": landingLegs!.toJson(),
    "flickr_images": List<dynamic>.from(flickrImages!.map((x) => x)),
    "wikipedia": wikipedia,
    "description": description,
    "rocket_id": rocketId,
    "rocket_name": rocketName,
    "rocket_type": rocketType,
  };
}

class Diameter {
  Diameter({
    this.meters,
    this.feet,
  });

  double? meters;
  double? feet;

  factory Diameter.fromJson(Map<String, dynamic> json) => Diameter(
    meters: json["meters"] == null ? null : json["meters"].toDouble(),
    feet: json["feet"] == null ? null : json["feet"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "meters": meters == null ? null : meters,
    "feet": feet == null ? null : feet,
  };
}

class Engines {
  Engines({
    this.number,
    this.type,
    this.version,
    this.layout,
    this.isp,
    this.engineLossMax,
    this.propellant1,
    this.propellant2,
    this.thrustSeaLevel,
    this.thrustVacuum,
    this.thrustToWeight,
  });

  int? number;
  String? type;
  String? version;
  String? layout;
  Isp? isp;
  int? engineLossMax;
  String? propellant1;
  String? propellant2;
  Thrust? thrustSeaLevel;
  Thrust? thrustVacuum;
  double? thrustToWeight;

  factory Engines.fromJson(Map<String, dynamic> json) => Engines(
    number: json["number"],
    type: json["type"],
    version: json["version"],
    layout: json["layout"] == null ? null : json["layout"],
    isp: Isp.fromJson(json["isp"]),
    engineLossMax: json["engine_loss_max"] == null ? null : json["engine_loss_max"],
    propellant1: json["propellant_1"],
    propellant2: json["propellant_2"],
    thrustSeaLevel: Thrust.fromJson(json["thrust_sea_level"]),
    thrustVacuum: Thrust.fromJson(json["thrust_vacuum"]),
    thrustToWeight: json["thrust_to_weight"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "type": type,
    "version": version,
    "layout": layout == null ? null : layout,
    "isp": isp!.toJson(),
    "engine_loss_max": engineLossMax == null ? null : engineLossMax,
    "propellant_1": propellant1,
    "propellant_2": propellant2,
    "thrust_sea_level": thrustSeaLevel!.toJson(),
    "thrust_vacuum": thrustVacuum!.toJson(),
    "thrust_to_weight": thrustToWeight,
  };
}

class Isp {
  Isp({
    this.seaLevel,
    this.vacuum,
  });

  int? seaLevel;
  int? vacuum;

  factory Isp.fromJson(Map<String, dynamic> json) => Isp(
    seaLevel: json["sea_level"],
    vacuum: json["vacuum"],
  );

  Map<String, dynamic> toJson() => {
    "sea_level": seaLevel,
    "vacuum": vacuum,
  };
}

class Thrust {
  Thrust({
    this.kN,
    this.lbf,
  });

  int? kN;
  int? lbf;

  factory Thrust.fromJson(Map<String, dynamic> json) => Thrust(
    kN: json["kN"],
    lbf: json["lbf"],
  );

  Map<String, dynamic> toJson() => {
    "kN": kN,
    "lbf": lbf,
  };
}

class FirstStage {
  FirstStage({
    this.reusable,
    this.engines,
    this.fuelAmountTons,
    this.burnTimeSec,
    this.thrustSeaLevel,
    this.thrustVacuum,
    this.cores,
  });

  bool? reusable;
  int? engines;
  double? fuelAmountTons;
  int? burnTimeSec;
  Thrust? thrustSeaLevel;
  Thrust? thrustVacuum;
  int? cores;

  factory FirstStage.fromJson(Map<String, dynamic> json) => FirstStage(
    reusable: json["reusable"],
    engines: json["engines"],
    fuelAmountTons: json["fuel_amount_tons"].toDouble(),
    burnTimeSec: json["burn_time_sec"] == null ? null : json["burn_time_sec"],
    thrustSeaLevel: Thrust.fromJson(json["thrust_sea_level"]),
    thrustVacuum: Thrust.fromJson(json["thrust_vacuum"]),
    cores: json["cores"] == null ? null : json["cores"],
  );

  Map<String, dynamic> toJson() => {
    "reusable": reusable,
    "engines": engines,
    "fuel_amount_tons": fuelAmountTons,
    "burn_time_sec": burnTimeSec == null ? null : burnTimeSec,
    "thrust_sea_level": thrustSeaLevel!.toJson(),
    "thrust_vacuum": thrustVacuum!.toJson(),
    "cores": cores == null ? null : cores,
  };
}

class LandingLegs {
  LandingLegs({
    this.number,
    this.material,
  });

  int? number;
  String? material;

  factory LandingLegs.fromJson(Map<String, dynamic> json) => LandingLegs(
    number: json["number"],
    material: json["material"] == null ? null : json["material"],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
    "material": material == null ? null : material,
  };
}

class Mass {
  Mass({
    this.kg,
    this.lb,
  });

  int? kg;
  int? lb;

  factory Mass.fromJson(Map<String, dynamic> json) => Mass(
    kg: json["kg"],
    lb: json["lb"],
  );

  Map<String, dynamic> toJson() => {
    "kg": kg,
    "lb": lb,
  };
}

class PayloadWeight {
  PayloadWeight({
    this.id,
    this.name,
    this.kg,
    this.lb,
  });

  String? id;
  String? name;
  int? kg;
  int? lb;

  factory PayloadWeight.fromJson(Map<String, dynamic> json) => PayloadWeight(
    id: json["id"],
    name: json["name"],
    kg: json["kg"],
    lb: json["lb"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "kg": kg,
    "lb": lb,
  };
}

class SecondStage {
  SecondStage({
    this.reusable,
    this.engines,
    this.fuelAmountTons,
    this.burnTimeSec,
    this.thrust,
    this.payloads,
  });

  bool? reusable;
  int? engines;
  double? fuelAmountTons;
  int? burnTimeSec;
  Thrust? thrust;
  Payloads? payloads;

  factory SecondStage.fromJson(Map<String, dynamic> json) => SecondStage(
    reusable: json["reusable"],
    engines: json["engines"],
    fuelAmountTons: json["fuel_amount_tons"].toDouble(),
    burnTimeSec: json["burn_time_sec"] == null ? null : json["burn_time_sec"],
    thrust: Thrust.fromJson(json["thrust"]),
    payloads: Payloads.fromJson(json["payloads"]),
  );

  Map<String, dynamic> toJson() => {
    "reusable": reusable,
    "engines": engines,
    "fuel_amount_tons": fuelAmountTons,
    "burn_time_sec": burnTimeSec == null ? null : burnTimeSec,
    "thrust": thrust!.toJson(),
    "payloads": payloads!.toJson(),
  };
}

class Payloads {
  Payloads({
    this.option1,
    this.compositeFairing,
    this.option2,
  });

  String? option1;
  CompositeFairing? compositeFairing;
  String? option2;

  factory Payloads.fromJson(Map<String, dynamic> json) => Payloads(
    option1: json["option_1"],
    compositeFairing: CompositeFairing.fromJson(json["composite_fairing"]),
    option2: json["option_2"] == null ? null : json["option_2"],
  );

  Map<String, dynamic> toJson() => {
    "option_1": option1,
    "composite_fairing": compositeFairing!.toJson(),
    "option_2": option2 == null ? null : option2,
  };
}

class CompositeFairing {
  CompositeFairing({
    this.height,
    this.diameter,
  });

  Diameter? height;
  Diameter? diameter;

  factory CompositeFairing.fromJson(Map<String, dynamic> json) => CompositeFairing(
    height: Diameter.fromJson(json["height"]),
    diameter: Diameter.fromJson(json["diameter"]),
  );

  Map<String, dynamic> toJson() => {
    "height": height!.toJson(),
    "diameter": diameter!.toJson(),
  };
}
