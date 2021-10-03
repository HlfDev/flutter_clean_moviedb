import 'package:moviedb/features/movie_detail/domain/entities/similar_movie_entity.dart';

class SimilarMovieModel extends SimilarMovieEntity {
  const SimilarMovieModel(
      {required id,
      required originalTitle,
      required posterPath,
      required releaseDate,
      required genreIds})
      : super(
          id: id,
          originalTitle: originalTitle,
          posterPath: posterPath,
          releaseDate: releaseDate,
          genreIds: genreIds,
        );

  factory SimilarMovieModel.fromJson(Map<String, dynamic> json) =>
      SimilarMovieModel(
        id: json['id'],
        originalTitle: json['original_title'],
        posterPath: json['poster_path'],
        releaseDate: json['release_date'],
        genreIds: json['genre_ids'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'original_title': originalTitle,
        'poster_path': posterPath,
        'release_date': releaseDate,
        'genre_ids': genreIds,
      };
}
