import 'package:flutter/material.dart';

class Product {
  Key key;
  String name;
  double price;
  String imgUrl;
  String? category;
  double? rating;
  String? description;

  Product({
    required this.key,
    required this.name,
    required this.price,
    required this.imgUrl,
    this.category,
    this.description,
    this.rating,
  });
}
