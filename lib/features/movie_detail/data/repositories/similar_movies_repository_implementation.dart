import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:moviedb/core/usecase/errors/exceptions.dart';
import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:moviedb/features/movie_detail/data/datasource/similar_movies_datasource.dart';
import 'package:moviedb/features/movie_detail/domain/entities/similar_movie_entity.dart';
import 'package:moviedb/features/movie_detail/domain/repositories/similar_movies_repository.dart';

class SimilarMoviesRepositoryImplementation
    implements ISimilarMoviesRepository {
  final ISimilarMoviesDatasource datasource;

  SimilarMoviesRepositoryImplementation(this.datasource);

  @override
  Future<Either<Failure, List<SimilarMovieEntity>>> getSimilarMoviesById(
      int id) async {
    try {
      final result = await datasource.getSimilarMoviesById(id);
      return Right(result);
    } on ServerException {
      return Left(ServerFailure());
    } on DioError {
      return Left(DioErrorFailure());
    }
  }
}
