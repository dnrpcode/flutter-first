import 'package:flutter/material.dart';

class Product {
  @required
  String title;
  @required
  String imageUrl;
  @required
  int price;
  @required
  String desc;

  Product(this.imageUrl, this.title, this.price, this.desc);
}
