import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:moviedb/core/usecase/errors/exceptions.dart';
import 'package:moviedb/features/movie_detail/data/datasource/endpoints/moviedb_endpoint.dart';
import 'package:moviedb/features/movie_detail/data/datasource/similar_movies_datasource_implementation.dart';
import 'package:moviedb/features/movie_detail/data/models/similar_movie_model.dart';

import '../../mocks/api_similar_movies_mock.dart';
import '../../mocks/movie_id_mock.dart';

class MockHttpClient extends Mock implements Dio {}

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");

  late SimilarMoviesDatasouceImplementation datasource;
  late Dio httpClient;

  final String url = MoviedbEndpoints.getSimilarMoviesUrl(movieId: 550);

  setUp(() {
    httpClient = MockHttpClient();
    datasource = SimilarMoviesDatasouceImplementation(
      httpClient: httpClient,
    );
    registerFallbackValue<DateTime>(DateTime(2000));
    registerFallbackValue<Uri>(Uri());
  });

  const tSimilarMovieModel = [
    SimilarMovieModel(
        id: 563,
        genreIds: [12, 28, 53, 878],
        originalTitle: 'Starship Troopers',
        posterPath: '/cxCmv23O7p3hyHwqoktHYkZcGsY.jpg',
        releaseDate: '1997-11-07'),
    SimilarMovieModel(
        id: 747,
        genreIds: [27, 35],
        originalTitle: 'Shaun of the Dead',
        posterPath: '/dgXPhzNJH8HFTBjXPB177yNx6RI.jpg',
        releaseDate: '2004-04-09'),
    SimilarMovieModel(
        id: 754,
        genreIds: [28, 80, 878, 53],
        originalTitle: 'Face/Off',
        posterPath: '/aYZDYdiMym5xEkSs4BrJMXFdZ9g.jpg',
        releaseDate: '1997-06-27'),
  ];

  void successMock() {
    when(() => httpClient.get(any())).thenAnswer((_) async => Response(
        data: jsonDecode(similarMoviesMock),
        statusCode: 200,
        requestOptions: RequestOptions(path: '')));
  }

  test('should call the get method with correct url', () async {
    successMock();

    await datasource.getSimilarMoviesById(tId);

    verify(() => httpClient.get(url)).called(1);
  });
  test('should return a list of SimilarMovies when the call is successful',
      () async {
    successMock();

    final result = await datasource.getSimilarMoviesById(tId);

    expect(result, tSimilarMovieModel);
  });
  test('should throw a ServerException when the call is unccessful', () async {
    when(() => httpClient.get(any())).thenAnswer((_) async => Response(
        data: 'something went wrong',
        statusCode: 400,
        requestOptions: RequestOptions(path: '')));

    final result = datasource.getSimilarMoviesById(tId);

    expect(() => result, throwsA(ServerException()));
  });
}
