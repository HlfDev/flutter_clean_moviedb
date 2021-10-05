import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:moviedb/core/usecase/errors/exceptions.dart';
import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:moviedb/features/movie_detail/data/datasource/movie_datasource.dart';
import 'package:moviedb/features/movie_detail/domain/entities/movie_entity.dart';
import 'package:moviedb/features/movie_detail/domain/repositories/movie_repository.dart';

class MovieRepositoryImplementation implements IMovieRepository {
  final IMovieDatasource datasource;

  MovieRepositoryImplementation(this.datasource);

  @override
  Future<Either<Failure, MovieEntity>> getMovieById(int id) async {
    try {
      final result = await datasource.getMovieById(id);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    } on DioError {
      return Left(DioErrorFailure());
    }
  }
}
