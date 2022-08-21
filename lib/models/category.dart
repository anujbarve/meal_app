import 'package:flutter/material.dart';

class Category {
  final String id;
  final String name;
  final Color color;
  final String img;

  const Category({
    @required this.id,
    this.name,
    this.color = Colors.orange,
    this.img,
  });
}
