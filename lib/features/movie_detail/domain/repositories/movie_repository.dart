import 'package:dartz/dartz.dart';
import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:moviedb/features/movie_detail/domain/entities/movie_entity.dart';

abstract class IMovieRepository {
  Future<Either<Failure, MovieEntity>> getMovieById(int id);
}
