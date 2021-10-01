import 'package:equatable/equatable.dart';

class SimilarMovieEntity extends Equatable {
  const SimilarMovieEntity(
      {required this.id,
      required this.originalTitle,
      required this.posterPath,
      required this.releaseDate,
      required this.genreIds});

  final int id;
  final String originalTitle;
  final String posterPath;
  final String releaseDate;
  final List<dynamic> genreIds;

  @override
  List<Object?> get props => [
        id,
        originalTitle,
        posterPath,
        releaseDate,
        genreIds,
      ];
}
