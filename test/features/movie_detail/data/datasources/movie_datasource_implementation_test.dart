import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/core/usecase/errors/exceptions.dart';
import 'package:moviedb/features/movie_detail/data/datasource/endpoints/moviedb_endpoint.dart';
import 'package:moviedb/features/movie_detail/data/datasource/movie_datasource_implementation.dart';
import 'package:moviedb/features/movie_detail/data/models/movie_model.dart';

import '../../mocks/api_movie_mock.dart';
import '../../mocks/movie_id_mock.dart';

class MockHttpClient extends Mock implements Dio {}

Future<void> main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  late MovieDatasouceImplementation datasource;
  late Dio httpClient;

  final String url = MoviedbEndpoints.getMovieUrl(movieId: 550);

  setUp(() {
    httpClient = MockHttpClient();
    datasource = MovieDatasouceImplementation(
      httpClient: httpClient,
    );
    registerFallbackValue<DateTime>(DateTime(2000));
    registerFallbackValue<Uri>(Uri());
  });

  const tMovieModel = MovieModel(
      id: 550,
      originalTitle: 'Fight Club',
      popularity: 48.739,
      posterPath: '/a26cQPRhJPX6GbWfQbvZdrrp9j9.jpg',
      voteCount: 22480);

  void successMock() {
    when(() => httpClient.get(any())).thenAnswer((_) async => Response(
        data: jsonDecode(movieMock),
        statusCode: 200,
        requestOptions: RequestOptions(path: '')));
  }

  test('should call the get method with correct url', () async {
    successMock();

    await datasource.getMovieById(tId);

    verify(() => httpClient.get(url)).called(1);
  });
  test('should return a MovieModel when the call is successful', () async {
    successMock();

    final result = await datasource.getMovieById(tId);

    expect(result, tMovieModel);
  });
  test('should throw a ServerException when the call is unccessful', () async {
    when(() => httpClient.get(any())).thenAnswer((_) async => Response(
        data: 'something went wrong',
        statusCode: 400,
        requestOptions: RequestOptions(path: '')));

    final result = datasource.getMovieById(tId);

    expect(() => result, throwsA(ServerException()));
  });
}
