import 'package:dio/dio.dart';
import 'package:moviedb/core/usecase/errors/exceptions.dart';
import 'package:moviedb/features/movie_detail/data/datasource/endpoints/moviedb_endpoint.dart';
import 'package:moviedb/features/movie_detail/data/datasource/movie_datasource.dart';
import 'package:moviedb/features/movie_detail/data/models/movie_model.dart';

class MovieDatasouceImplementation implements IMovieDatasource {
  final Dio httpClient;

  MovieDatasouceImplementation({
    required this.httpClient,
  });

  final String url = MoviedbEndpoints.getMovieUrl();

  @override
  Future<MovieModel> getMovieById(int id) async {
    final response = await httpClient.get(url);
    if (response.statusCode == 200) {
      return MovieModel.fromJson(response.data);
    } else {
      throw ServerException();
    }
  }
}
