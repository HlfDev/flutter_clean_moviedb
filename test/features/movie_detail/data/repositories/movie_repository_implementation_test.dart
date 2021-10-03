import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/core/usecase/errors/exceptions.dart';
import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:moviedb/features/movie_detail/data/datasource/movie_datasource.dart';
import 'package:moviedb/features/movie_detail/data/models/movie_model.dart';
import 'package:moviedb/features/movie_detail/data/repositories/movie_repository_implementation.dart';

class MockMovieDatasource extends Mock implements IMovieDatasource {}

void main() {
  late MovieRepositoryImplementation repository;
  late IMovieDatasource datasource;

  setUp(() {
    datasource = MockMovieDatasource();
    repository = MovieRepositoryImplementation(datasource);
    registerFallbackValue<DateTime>(DateTime(2000));
  });

  const tMovieModel = MovieModel(
      id: 550,
      originalTitle: 'Fight Club',
      popularity: 48.739,
      posterPath: '/a26cQPRhJPX6GbWfQbvZdrrp9j9.jpg',
      voteCount: 22480);

  const tId = 550;

  test('should return movie model when calls the datasource', () async {
    // Arrange
    when(() => datasource.getMovieById(any()))
        .thenAnswer((_) async => tMovieModel);
    // Act
    final result = await repository.getMovieById(tId);
    // Assert
    expect(result, const Right(tMovieModel));
    verify(() => datasource.getMovieById(tId)).called(1);
  });

  test(
      'should return a server failure when the call to datasource is unsucessful',
      () async {
    // Arrange
    when(() => datasource.getMovieById(any())).thenThrow(ServerException());
    // Act
    final result = await repository.getMovieById(tId);
    // Assert
    expect(result, Left(ServerFailure()));
    verify(() => datasource.getMovieById(tId)).called(1);
  });
}
