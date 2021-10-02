import 'package:moviedb/features/movie_detail/data/models/similar_movie_model.dart';

abstract class ISimilarMoviesDatasource {
  Future<List<SimilarMovieModel>> getSimilarMoviesById(int id);
}
