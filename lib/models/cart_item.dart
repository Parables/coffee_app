import 'package:coffee_app/models/product.dart';
import 'package:flutter/material.dart';

class CartItem {
  Key key;
  Product product;
  int? qnty;

  CartItem({
    required this.key,
    required this.product,
    this.qnty = 1,
  });
}
