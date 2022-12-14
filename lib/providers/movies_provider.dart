import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:peliculas_app/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = '0725904af9d713d86588bc91e7a508da';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';

  List<Movie> onDisplayMovies = [];

  // Creamos el constructor
  MoviesProvider() {
    print('MoviesProvider inicializado');

    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    print('getOnDisplayMovies');
    var url = Uri.https(_baseUrl, '/3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': '1'});

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);

    final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);
  }
}
