import 'package:flutter_dotenv/flutter_dotenv.dart';

class MoviedbEndpoints {
  static String apiKey = dotenv.env['API_KEY'].toString();

  static String getMovieUrl() =>
      "https://api.themoviedb.org/3/movie/550?api_key=$apiKey";

  static String getSimilarMoviesUrl() =>
      "https://api.themoviedb.org/3/movie/550/similar?api_key=$apiKey";

  static String getMoviesGenresUrl() =>
      "https://api.themoviedb.org/3/genre/movie/list?api_key=$apiKey";

  static String getMovieImageUrl({required String moviePosterPath}) =>
      "https://image.tmdb.org/t/p/original/$moviePosterPath";

  static String getSimilarMovieImageUrl(
          {required String similarMoviePosterPath}) =>
      "https://image.tmdb.org/t/p/w400/$similarMoviePosterPath";
}
