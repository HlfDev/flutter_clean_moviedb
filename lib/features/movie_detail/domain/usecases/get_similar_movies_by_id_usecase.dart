import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:moviedb/core/usecase/usecase.dart';
import 'package:moviedb/features/movie_detail/domain/entities/similar_movie_entity.dart';
import 'package:moviedb/features/movie_detail/domain/repositories/similar_movies_repository.dart';

class GetSimilarMoviesByIdUsecase
    implements Usecase<List<SimilarMovieEntity>, int> {
  final ISimilarMoviesRepository repository;

  GetSimilarMoviesByIdUsecase(this.repository);

  @override
  Future<Either<Failure, List<SimilarMovieEntity>>> call(int? id) async {
    return id != null
        ? await repository.getSimilarMoviesById(id)
        : Left(NullParamFailure());
  }
}
