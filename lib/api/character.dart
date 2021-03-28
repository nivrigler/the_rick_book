import 'package:flutter/foundation.dart';

class Character {
  final int id;
  final String name;
  final String image;

  Character({@required this.id, @required this.name, @required this.image});

  factory Character.fromJson(Map<String, dynamic> json) {
    return Character(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}