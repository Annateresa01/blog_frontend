// To parse this JSON data, do
//
//     final blogm = blogmFromJson(jsonString);

import 'dart:convert';

Blogm blogmFromJson(String str) => Blogm.fromJson(json.decode(str));

String blogmToJson(Blogm data) => json.encode(data.toJson());

class Blogm {
  String name;
  String age;
  String mobno;
  String adrs;
  String pincode;
  String emailid;
  String password;

  Blogm({
    required this.name,
    required this.age,
    required this.mobno,
    required this.adrs,
    required this.pincode,
    required this.emailid,
    required this.password,
  });

  factory Blogm.fromJson(Map<String, dynamic> json) => Blogm(
    name: json["name"],
    age: json["age"],
    mobno: json["mobno"],
    adrs: json["adrs"],
    pincode: json["pincode"],
    emailid: json["emailid"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "mobno": mobno,
    "adrs": adrs,
    "pincode": pincode,
    "emailid": emailid,
    "password": password,
  };
}
