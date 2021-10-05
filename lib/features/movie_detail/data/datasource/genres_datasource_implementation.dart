import 'package:dio/dio.dart';
import 'package:moviedb/core/usecase/errors/exceptions.dart';
import 'package:moviedb/core/usecase/usecase.dart';
import 'package:moviedb/features/movie_detail/data/models/genre_model.dart';
import 'package:moviedb/features/movie_detail/domain/entities/genre_entity.dart';

import 'endpoints/moviedb_endpoint.dart';
import 'genres_datasource.dart';

class GenresDatasouceImplementation implements IGenresDatasource {
  final Dio httpClient;

  GenresDatasouceImplementation({
    required this.httpClient,
  });

  @override
  Future<List<GenreEntity>> getGenres(NoParams noparams) async {
    final response =
        await httpClient.get(MoviedbEndpoints.getMoviesGenresUrl());
    if (response.statusCode == 200) {
      final result = response.data['genres'] as List;

      List<GenreEntity> genres =
          result.map((e) => GenreModel.fromJson(e)).toList();

      return genres;
    } else {
      throw ServerException();
    }
  }
}
