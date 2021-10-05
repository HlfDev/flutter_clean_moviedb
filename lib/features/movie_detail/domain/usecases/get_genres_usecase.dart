import 'package:dartz/dartz.dart';
import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:moviedb/core/usecase/usecase.dart';
import 'package:moviedb/features/movie_detail/domain/entities/genre_entity.dart';

import 'package:moviedb/features/movie_detail/domain/repositories/genres_repository.dart';

class GetGenresUsecase implements Usecase<List<GenreEntity>, NoParams> {
  final IGenresRepository repository;

  GetGenresUsecase(this.repository);

  @override
  Future<Either<Failure, List<GenreEntity>>> call(NoParams noParams) async {
    return await repository.getGenres(noParams);
  }
}
