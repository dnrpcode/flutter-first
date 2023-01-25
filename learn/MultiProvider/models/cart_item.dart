import 'package:flutter/material.dart';

class CartItem {
  String id;
  String title;
  double price;
  int qty;

  CartItem({
    @required this.id,
    @required this.price,
    @required this.qty,
    @required this.title,
  });
}
