import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:moviedb/features/movie_detail/data/models/movie_model.dart';
import 'package:moviedb/features/movie_detail/domain/entities/movie_entity.dart';

import '../../mocks/api_movie_mock.dart';

void main() {
  const tMovieModel = MovieModel(
      id: 550,
      originalTitle: 'Fight Club',
      popularity: 48.739,
      posterPath: '/a26cQPRhJPX6GbWfQbvZdrrp9j9.jpg',
      voteCount: 22480);

  test('should be a subclass of MovieEntity', () {
    expect(tMovieModel, isA<MovieEntity>());
  });

  test('should return a valid model', () {
    // Arrange
    final Map<String, dynamic> jsonMap = json.decode(movieMock);
    // Act
    final result = MovieModel.fromJson(jsonMap);
    // Assert
    expect(result, tMovieModel);
  });
  test('should return a json map containing the proper data', () {
    // Arrange
    final expectedMap = {
      "id": 550,
      "original_title": "Fight Club",
      "popularity": 48.739,
      "poster_path": "/a26cQPRhJPX6GbWfQbvZdrrp9j9.jpg",
      "vote_count": 22480
    };
    // Act
    final result = tMovieModel.toJson();
    // Assert
    expect(result, expectedMap);
  });
}
