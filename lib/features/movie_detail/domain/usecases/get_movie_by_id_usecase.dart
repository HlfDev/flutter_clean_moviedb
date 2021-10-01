import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:moviedb/core/usecase/usecase.dart';
import 'package:moviedb/features/movie_detail/domain/entities/movie_entity.dart';
import 'package:moviedb/features/movie_detail/domain/repositories/movie_repository.dart';

class GetMovieByIdUsecase implements Usecase<MovieEntity, int> {
  final IMovieRepository repository;

  GetMovieByIdUsecase(this.repository);

  @override
  Future<Either<Failure, MovieEntity>> call(int? id) async {
    return id != null
        ? await repository.getMovieById(id)
        : Left(NullParamFailure());
  }
}
