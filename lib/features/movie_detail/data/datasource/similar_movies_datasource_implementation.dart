import 'package:dio/dio.dart';
import 'package:moviedb/core/usecase/errors/exceptions.dart';
import 'package:moviedb/features/movie_detail/data/datasource/endpoints/moviedb_endpoint.dart';
import 'package:moviedb/features/movie_detail/data/datasource/similar_movies_datasource.dart';
import 'package:moviedb/features/movie_detail/data/models/similar_movie_model.dart';

class SimilarMoviesDatasouceImplementation implements ISimilarMoviesDatasource {
  final Dio httpClient;

  SimilarMoviesDatasouceImplementation({
    required this.httpClient,
  });

  @override
  Future<List<SimilarMovieModel>> getSimilarMoviesById(int id) async {
    final response =
        await httpClient.get(MoviedbEndpoints.getSimilarMoviesUrl(movieId: id));
    if (response.statusCode == 200) {
      final result = response.data['results'] as List;

      List<SimilarMovieModel> similarMovies =
          result.map((e) => SimilarMovieModel.fromJson(e)).toList();

      return similarMovies;
    } else {
      throw ServerException();
    }
  }
}
