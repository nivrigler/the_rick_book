import 'dart:convert';
import 'package:http/http.dart' as http;
import 'character.dart';


Future<Character> fetchCharacter() async {
  final response = await http.get(Uri.https('rickandmortyapi.com\/api', 'character\/1'));

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Character.fromJson(jsonDecode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load Character');
  }
}