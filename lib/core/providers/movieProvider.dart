import 'package:flutter/material.dart';
import 'package:movieapp/core/models/movieModel.dart';
import 'package:movieapp/core/utils/movieParser.dart';

class Movieprovider with ChangeNotifier {
  List<MovieModel> movies = [];
  // List getAllMovie() {
  //   return movies;
  // }

  List<MovieModel> get movieLists => movies;
  Future<void> getAllMovie(BuildContext context) async {
    try {
      final jsonString = await DefaultAssetBundle.of(
        context,
      ).loadString("assets/data/film.json");
      final parsedData = Movieparser.parseMovie(jsonString);
      print("the parsed data is, " + parsedData.toString());
      movies = parsedData;
      notifyListeners();
    } catch (e) {}
  }
}
