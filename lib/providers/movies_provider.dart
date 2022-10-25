import 'package:flutter/material.dart';

class MoviesProvider extends ChangeNotifier {
  // Creamos el constructor
  MoviesProvider() {
    print('MoviesProvider inicializado');

    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    print('getOnDisplayMovies');
  }
}
