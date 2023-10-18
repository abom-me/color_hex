// To parse this JSON data, do
//
//     final hexToColorModel = hexToColorModelFromJson(jsonString);

import 'dart:convert';

HexToColorModel hexToColorModelFromJson(String str) =>
    HexToColorModel.fromJson(json.decode(str));

String hexToColorModelToJson(HexToColorModel data) =>
    json.encode(data.toJson());

class HexToColorModel {
  String? hex;
  String? color;

  HexToColorModel({
    this.hex,
    this.color,
  });

  HexToColorModel copyWith({
    String? hex,
    String? color,
  }) =>
      HexToColorModel(
        hex: hex ?? this.hex,
        color: color ?? this.color,
      );

  factory HexToColorModel.fromJson(Map<String, dynamic> json) =>
      HexToColorModel(
        hex: json["hex"],
        color: json["color"],
      );

  Map<String, dynamic> toJson() => {
        "hex": hex,
        "color": color,
      };
}
