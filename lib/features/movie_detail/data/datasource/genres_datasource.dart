import 'package:moviedb/core/usecase/usecase.dart';
import 'package:moviedb/features/movie_detail/domain/entities/genre_entity.dart';

abstract class IGenresDatasource {
  Future<List<GenreEntity>> getGenres(NoParams noparams);
}
