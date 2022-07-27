// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

List<User> userFromJson(String str) =>
    List<User>.from(json.decode(str).map((x) => User.fromJson(x)));

String userToJson(List<User> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class User {
  User({
    required this.userId,
    required this.username,
    required this.firstname,
    required this.lastname,
    required this.password,
    required this.email,
    this.image,
    required this.phone,
    this.verfiycode,
    this.createTime,
    this.approve,
  });

  String userId;
  String username;
  String firstname;
  String lastname;
  String password;
  String email;
  String? image;
  String phone;
  String? verfiycode;
  DateTime? createTime;
  String? approve;

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json["user_id"],
        username: json["username"],
        firstname: json["firstname"],
        lastname: json["lastname"],
        password: json["password"],
        email: json["email"],
        image: json["image"],
        phone: json["phone"],
        verfiycode: json["verfiycode"],
        createTime: DateTime.parse(json["create_time"]),
        approve: json["approve"],
      );

  Map<String, dynamic> toJson() => {
        "user_id": userId,
        "username": username,
        "firstname": firstname,
        "lastname": lastname,
        "password": password,
        "email": email,
        "image": image,
        "phone": phone,
        "verfiycode": verfiycode,
        "create_time": createTime?.toIso8601String(),
        "approve": approve,
      };
}
