import 'package:dio/dio.dart';
import 'package:moviedb/core/usecase/errors/exceptions.dart';
import 'package:moviedb/features/movie_detail/data/datasource/genres_datasource.dart';
import 'package:moviedb/features/movie_detail/domain/entities/genre_entity.dart';
import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:moviedb/features/movie_detail/domain/repositories/genres_repository.dart';

class GenresRepositoryImplementation implements IGenresRepository {
  final IGenresDatasource datasource;

  GenresRepositoryImplementation(this.datasource);

  @override
  Future<Either<Failure, List<GenreEntity>>> getGenres(noparams) async {
    try {
      final result = await datasource.getGenres(noparams);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    } on DioError {
      return Left(DioErrorFailure());
    }
  }
}
