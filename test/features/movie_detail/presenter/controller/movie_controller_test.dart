import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/features/movie_detail/domain/usecases/get_movie_by_id_usecase.dart';
import 'package:moviedb/features/movie_detail/presenter/controller/movie_controller.dart';
import '../../mocks/movie_entity_mock.dart';
import '../../mocks/movie_id_mock.dart';

class MockGetMovieByIdUsecase extends Mock implements GetMovieByIdUsecase {}

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();

  late MovieController controller;
  late GetMovieByIdUsecase usecase;

  setUp(() {
    usecase = MockGetMovieByIdUsecase();
    controller = MovieController(movieById: usecase);
    registerFallbackValue<DateTime>(DateTime(0, 0, 0));
  });

  test('should return a Movie from the usecase', () async {
    when(() => usecase.call(any()))
        .thenAnswer((_) async => const Right(tMovie));

    await controller.getMovieById(tId);
    expect(controller.movie, tMovie);
  });
}
