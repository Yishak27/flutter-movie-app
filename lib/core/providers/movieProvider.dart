import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movieapp/core/models/movieModel.dart';
import 'package:movieapp/core/utils/movieParser.dart';

class Movieprovider with ChangeNotifier {
  List<MovieModel> _movies = [];

  List<MovieModel> get movieLists => _movies;
  Future<void> getAllMovie(BuildContext context) async {
    try {
      final jsonString = await DefaultAssetBundle.of(
        context,
      ).loadString("assets/data/film.json");
      final parsedData = Movieparser.parse(jsonString);
      if (kDebugMode) {
        print("the parsed data is, " + parsedData.toString());
      }
      _movies = parsedData;
      notifyListeners();
    } catch (e) {
      print("Error in provider $e");
    }
  }
}
