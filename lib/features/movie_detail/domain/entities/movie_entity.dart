import 'package:equatable/equatable.dart';

class MovieEntity extends Equatable {
  const MovieEntity(
      {required this.id,
      required this.originalTitle,
      required this.popularity,
      required this.posterPath,
      required this.voteCount});

  final int id;
  final String originalTitle;
  final num popularity;
  final String posterPath;
  final int voteCount;

  @override
  List<Object?> get props => [
        id,
        originalTitle,
        popularity,
        posterPath,
        voteCount,
      ];
}
