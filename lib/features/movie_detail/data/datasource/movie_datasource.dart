import 'package:moviedb/features/movie_detail/data/models/movie_model.dart';

abstract class IMovieDatasource {
  Future<MovieModel> getMovieById(int id);
}
