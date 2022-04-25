import 'package:flutter/material.dart';

class Category{
  final String id;
  final String tittle;
  final String image;
  final Color color;

  const Category({required this.id, required this.tittle, required this.image, this.color = Colors.orange});
 
}
