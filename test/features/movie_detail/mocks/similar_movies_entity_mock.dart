import 'package:moviedb/features/movie_detail/domain/entities/similar_movie_entity.dart';

const List<SimilarMovieEntity> tSimilarMovies = [
  SimilarMovieEntity(
      id: 13,
      genreIds: [18],
      originalTitle: 'Forrest Gump',
      posterPath: '/saHP97rTPS5eLmrLQEcANmKrsFl.jpg',
      releaseDate: '1994-07-06'),
  SimilarMovieEntity(
      id: 14,
      genreIds: [12, 14, 28, 53, 878],
      originalTitle: 'American Beauty',
      posterPath: '/wby9315QzVKdW9BonAefg8jGTTb.jpg',
      releaseDate: '1999-09-15'),
  SimilarMovieEntity(
      id: 18,
      genreIds: [18, 10752],
      originalTitle: 'The Fifth Element',
      posterPath: '/fPtlCO1yQtnoLHOwKtWz7db6RGU.jpg',
      releaseDate: '1997-05-02'),
];
