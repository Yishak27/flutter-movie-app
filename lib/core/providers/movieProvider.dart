import 'package:flutter/material.dart';

class Movieprovider with ChangeNotifier {
  final List<String> movies = [
    "the gladiator",
    "the godfather",
    "the dark knight",
    "the matrix",
    "the lord of the rings",
  ];
  List<String> get _movieList => movies;
  List getAllMovie() {
    return movies;
  }
}
