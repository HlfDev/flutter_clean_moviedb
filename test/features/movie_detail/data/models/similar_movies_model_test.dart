import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:moviedb/features/movie_detail/data/models/similar_movie_model.dart';
import 'package:moviedb/features/movie_detail/domain/entities/similar_movie_entity.dart';

import '../../mocks/api_similar_movie_model_mock.dart';

void main() {
  const tSimilarMovieModel = SimilarMovieModel(
      id: 101,
      genreIds: [80, 18, 28],
      originalTitle: 'Léon: The Professional',
      posterPath: '/wHqGb8J6tXBVwjqWooGMtNEjs2A.jpg',
      releaseDate: '1994-09-14');
  test('should be a subclass of MovieEntity', () {
    expect(tSimilarMovieModel, isA<SimilarMovieEntity>());
  });
  test('should return a valid model', () {
    // Arrange
    final Map<String, dynamic> jsonMap = json.decode(similarMovieModelMock);
    // Act
    final result = SimilarMovieModel.fromJson(jsonMap);
    // Assert
    expect(result, tSimilarMovieModel);
  });

  test('should return a json map containing the proper data', () {
    // Arrange
    final expectedMap = {
      "id": 101,
      "genre_ids": [80, 18, 28],
      "original_title": "Léon: The Professional",
      "poster_path": "/wHqGb8J6tXBVwjqWooGMtNEjs2A.jpg",
      "release_date": "1994-09-14"
    };
    // Act
    final result = tSimilarMovieModel.toJson();
    // Assert
    expect(result, expectedMap);
  });
}
