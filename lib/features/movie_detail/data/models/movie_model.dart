import 'package:moviedb/features/movie_detail/domain/entities/movie_entity.dart';

class MovieModel extends MovieEntity {
  const MovieModel(
      {required id,
      required originalTitle,
      required popularity,
      required posterPath,
      required voteCount})
      : super(
          id: id,
          originalTitle: originalTitle,
          popularity: popularity,
          posterPath: posterPath,
          voteCount: voteCount,
        );

  factory MovieModel.fromJson(Map<String, dynamic> json) => MovieModel(
        id: json['id'],
        originalTitle: json['original_title'],
        popularity: json['popularity'],
        posterPath: json['poster_path'],
        voteCount: json['vote_count'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'original_title': originalTitle,
        'popularity': popularity,
        'poster_path': posterPath,
        'vote_count': voteCount,
      };
}
