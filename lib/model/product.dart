// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.catId,
    this.isFavorite,
    required this.price,
    required this.description,
  });

  String id;
  String name;
  String image;
  String catId;
  String? isFavorite;
  String price;
  String description;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        catId: json["cat_id"],
        isFavorite: json["isFavorite"],
        price: json["price"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "cat_id": catId,
        "isFavorite": isFavorite,
        "price": price,
        "description": description,
      };
}
