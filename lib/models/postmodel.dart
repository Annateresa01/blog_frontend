// To parse this JSON data, do
//
//     final blogm = blogmFromJson(jsonString);

import 'dart:convert';

List<Blogm> blogmFromJson(String str) => List<Blogm>.from(json.decode(str).map((x) => Blogm.fromJson(x)));

String blogmToJson(List<Blogm> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Blogm {
  String id;
  UserId userId;
  String post;
  DateTime date;
  int v;

  Blogm({
    required this.id,
    required this.userId,
    required this.post,
    required this.date,
    required this.v,
  });

  factory Blogm.fromJson(Map<String, dynamic> json) => Blogm(
    id: json["_id"],
    userId: UserId.fromJson(json["userId"]),
    post: json["post"],
    date: DateTime.parse(json["date"]),
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "userId": userId.toJson(),
    "post": post,
    "date": date.toIso8601String(),
    "__v": v,
  };
}

class UserId {
  String name;
  String age;
  String mobno;
  String adrs;
  String emailid;

  UserId({
    required this.name,
    required this.age,
    required this.mobno,
    required this.adrs,
    required this.emailid,
  });

  factory UserId.fromJson(Map<String, dynamic> json) => UserId(
    name: json["name"],
    age: json["age"],
    mobno: json["mobno"],
    adrs: json["adrs"],
    emailid: json["emailid"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "mobno": mobno,
    "adrs": adrs,
    "emailid": emailid,
  };
}
