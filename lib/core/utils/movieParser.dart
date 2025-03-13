import 'dart:convert';
import 'package:movieapp/core/models/movieModel.dart';

class Movieparser {
  static List<MovieModel> parse(String jsonString) {
    try {
      final List<dynamic> parsedData = json.decode(jsonString);
      return parsedData
          .map(
            (jsonItems) =>
                MovieModel.fromJson(jsonItems as Map<String, dynamic>),
          )
          .toList();
    } catch (e) {
      print("error in parser $e");
      return [];
    }
  }
}
