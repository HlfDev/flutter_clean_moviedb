import 'package:flutter_dotenv/flutter_dotenv.dart';

class MoviedbEndpoints {
  static String apiKey = dotenv.env['API_KEY'].toString();

  static String getMovieUrl() =>
      "https://api.themoviedb.org/3/movie/550/similar?api_key=$apiKey";

  static String getSimilarMoviesUrl() =>
      "https://api.themoviedb.org/3/movie/550/similar?api_key=$apiKey";
}
