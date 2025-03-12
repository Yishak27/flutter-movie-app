import 'dart:convert';
import 'package:movieapp/core/models/movieModel.dart';

class Movieparser {
  static List<MovieModel> parseMovie(String data) {
    final List<dynamic> parsedData = json.decode(data);
    return parsedData.map((item) => MovieModel.fromJson(item)).toList();
  }
}
