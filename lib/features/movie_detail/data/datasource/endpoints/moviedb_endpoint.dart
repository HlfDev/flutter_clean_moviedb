import 'package:flutter_dotenv/flutter_dotenv.dart';

class MoviedbEndpoints {
  static String apiKey = dotenv.env['API_KEY'].toString();

  static String getMovieUrl({required int movieId}) =>
      "https://api.themoviedb.org/3/movie/$movieId?api_key=$apiKey";

  static String getSimilarMoviesUrl({required int movieId}) =>
      "https://api.themoviedb.org/3/movie/$movieId/similar?api_key=$apiKey";

  static String getMoviesGenresUrl() =>
      "https://api.themoviedb.org/3/genre/movie/list?api_key=$apiKey";

  static String getMovieImageUrl({required String moviePosterPath}) =>
      "https://image.tmdb.org/t/p/original/$moviePosterPath";

  static String getSimilarMovieImageUrl(
          {required String similarMoviePosterPath}) =>
      "https://image.tmdb.org/t/p/w400/$similarMoviePosterPath";
}
