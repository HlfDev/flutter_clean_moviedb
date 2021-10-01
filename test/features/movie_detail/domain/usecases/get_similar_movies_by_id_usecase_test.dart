import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:moviedb/features/movie_detail/domain/entities/similar_movie_entity.dart';
import 'package:moviedb/features/movie_detail/domain/repositories/similar_movies_repository.dart';
import 'package:moviedb/features/movie_detail/domain/usecases/get_similar_movies_by_id_usecase.dart';

import '../../mocks/movie_id_mock.dart';
import '../../mocks/similar_movies_entity_mock.dart';

class MockSimilarMoviesRepository extends Mock
    implements ISimilarMoviesRepository {}

void main() {
  late GetSimilarMoviesByIdUsecase usecase;
  late ISimilarMoviesRepository repository;

  setUp(() {
    repository = MockSimilarMoviesRepository();
    usecase = GetSimilarMoviesByIdUsecase(repository);
    registerFallbackValue<DateTime>(DateTime(2000));
  });
  test('should get similar movies entity for a given id from the repository',
      () async {
    when(() => repository.getSimilarMoviesById(any())).thenAnswer((_) async =>
        const Right<Failure, List<SimilarMovieEntity>>(tSimilarMovies));

    final result = await usecase(tId);

    expect(result, const Right(tSimilarMovies));
    verify(() => repository.getSimilarMoviesById(tId)).called(1);
  });

  test('should return a ServerFailure when don\'t succeed', () async {
    when(() => repository.getSimilarMoviesById(any())).thenAnswer(
        (_) async => Left<Failure, List<SimilarMovieEntity>>(ServerFailure()));

    final result = await usecase(tId);

    expect(result, Left(ServerFailure()));
    verify(() => repository.getSimilarMoviesById(tId)).called(1);
  });

  test('should return a NullParamFailure when receives a null param', () async {
    final result = await usecase(null);

    expect(result, Left(NullParamFailure()));
    verifyNever(() => repository.getSimilarMoviesById(tId));
  });
}
