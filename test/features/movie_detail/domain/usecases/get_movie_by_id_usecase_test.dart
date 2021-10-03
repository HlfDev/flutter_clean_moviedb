import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:moviedb/features/movie_detail/domain/entities/movie_entity.dart';
import 'package:moviedb/features/movie_detail/domain/repositories/movie_repository.dart';
import 'package:moviedb/features/movie_detail/domain/usecases/get_movie_by_id_usecase.dart';

import '../../mocks/movie_id_mock.dart';
import '../../mocks/movie_entity_mock.dart';

class MockMovieRepository extends Mock implements IMovieRepository {}

void main() {
  late GetMovieByIdUsecase usecase;
  late IMovieRepository repository;

  setUp(() {
    repository = MockMovieRepository();
    usecase = GetMovieByIdUsecase(repository);
    registerFallbackValue<DateTime>(DateTime(2000));
  });

  test('should get movie entity for a given id from the repository', () async {
    when(() => repository.getMovieById(any()))
        .thenAnswer((_) async => const Right<Failure, MovieEntity>(tMovie));

    final result = await usecase(tId);

    expect(result, const Right(tMovie));
    verify(() => repository.getMovieById(tId)).called(1);
  });

  test('should return a ServerFailure when don\'t succeed', () async {
    when(() => repository.getMovieById(any()))
        .thenAnswer((_) async => Left<Failure, MovieEntity>(ServerFailure()));

    final result = await usecase(tId);

    expect(result, Left(ServerFailure()));
    verify(() => repository.getMovieById(tId)).called(1);
  });

  test('should return a NullParamFailure when receives a null param', () async {
    final result = await usecase(null);

    expect(result, Left(NullParamFailure()));
    verifyNever(() => repository.getMovieById(tId));
  });
}
