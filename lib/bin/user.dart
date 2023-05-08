// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));
String userToJson(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
// List<RehabliltyId> rehabliltyIdFromJson(String str) => List<RehabliltyId>.from(json.decode(str).map((x) => RehabliltyId.fromJson(x)));
// String rehabliltyIdToJson(List<RehabliltyId> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
class User {
  int id;
  String name;
  int age;
  DateTime birth;
  double height;
  double weight;
  String gender;
  String mobile;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.birth,
    required this.height,
    required this.weight,
    required this.gender,
    required this.mobile,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    name: json["name"],
    age: json["age"],
    birth: DateTime.parse(json["birth"]),
    height: json["height"]?.toDouble(),
    weight: json["weight"],
    gender: json["gender"],
    mobile: json["mobile"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "age": age,
    "birth": "${birth.year.toString().padLeft(4, '0')}-${birth.month.toString().padLeft(2, '0')}-${birth.day.toString().padLeft(2, '0')}",
    "height": height,
    "weight": weight,
    "gender": gender,
    "mobile": mobile,
  };
}
