import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/core/usecase/errors/exceptions.dart';
import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:moviedb/features/movie_detail/data/datasource/similar_movies_datasource.dart';
import 'package:moviedb/features/movie_detail/data/models/similar_movie_model.dart';
import 'package:moviedb/features/movie_detail/data/repositories/similar_movies_repository_implementation.dart';

class MockSimilarMoviesDatasource extends Mock
    implements ISimilarMoviesDatasource {}

void main() {
  late SimilarMoviesRepositoryImplementation repository;
  late ISimilarMoviesDatasource datasource;

  setUp(() {
    datasource = MockSimilarMoviesDatasource();
    repository = SimilarMoviesRepositoryImplementation(datasource);
    registerFallbackValue<DateTime>(DateTime(2000));
  });

  const tSimilarMovieModel = [
    SimilarMovieModel(
        id: 13,
        genreIds: [18],
        originalTitle: 'Forrest Gump',
        posterPath: '/saHP97rTPS5eLmrLQEcANmKrsFl.jpg',
        releaseDate: '1994-07-06'),
    SimilarMovieModel(
        id: 14,
        genreIds: [12, 14, 28, 53, 878],
        originalTitle: 'American Beauty',
        posterPath: '/wby9315QzVKdW9BonAefg8jGTTb.jpg',
        releaseDate: '1999-09-15'),
    SimilarMovieModel(
        id: 18,
        genreIds: [18, 10752],
        originalTitle: 'The Fifth Element',
        posterPath: '/fPtlCO1yQtnoLHOwKtWz7db6RGU.jpg',
        releaseDate: '1997-05-02'),
  ];

  const tId = 550;

  test('should return list of similar movies model when calls the datasource',
      () async {
    // Arrange
    when(() => datasource.getSimilarMoviesById(any()))
        .thenAnswer((_) async => tSimilarMovieModel);
    // Act
    final result = await repository.getSimilarMoviesById(tId);
    // Assert
    expect(result, const Right(tSimilarMovieModel));
    verify(() => datasource.getSimilarMoviesById(tId)).called(1);
  });

  test(
      'should return a server failure when the call to datasource is unsucessful',
      () async {
    // Arrange
    when(() => datasource.getSimilarMoviesById(any()))
        .thenThrow(ServerException());
    // Act
    final result = await repository.getSimilarMoviesById(tId);
    // Assert
    expect(result, Left(ServerFailure()));
    verify(() => datasource.getSimilarMoviesById(tId)).called(1);
  });
}
