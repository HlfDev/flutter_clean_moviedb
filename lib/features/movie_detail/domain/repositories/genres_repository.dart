import 'package:dartz/dartz.dart';
import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:moviedb/core/usecase/usecase.dart';
import 'package:moviedb/features/movie_detail/domain/entities/genre_entity.dart';

abstract class IGenresRepository {
  Future<Either<Failure, List<GenreEntity>>> getGenres(NoParams noparams);
}
