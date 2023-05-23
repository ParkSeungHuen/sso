// To parse this JSON data, do
//
//     final rehabliltyId = rehabliltyIdFromJson(jsonString);

import 'dart:convert';

List<RehabliltyId> rehabliltyIdFromJson(String str) => List<RehabliltyId>.from(json.decode(str).map((x) => RehabliltyId.fromJson(x)));
String rehabliltyIdToJson(List<RehabliltyId> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class RehabliltyId {
  int rehabliltationInfoId;

  RehabliltyId({
    required this.rehabliltationInfoId,
  });

  factory RehabliltyId.fromJson(Map<String, dynamic> json) => RehabliltyId(
    rehabliltationInfoId: json["rehabliltationInfoId"],
  );

  Map<String, dynamic> toJson() => {
    "rehabliltationInfoId": rehabliltationInfoId,
  };
}
