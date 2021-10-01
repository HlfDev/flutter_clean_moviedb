import 'package:dartz/dartz.dart';
import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:moviedb/features/movie_detail/domain/entities/similar_movie_entity.dart';

abstract class ISimilarMoviesRepository {
  Future<Either<Failure, List<SimilarMovieEntity>>> getSimilarMoviesById(
      int id);
}
