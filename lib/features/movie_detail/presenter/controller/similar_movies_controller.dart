import 'dart:convert';

import 'package:mobx/mobx.dart';
import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:moviedb/core/usecase/usecase.dart';
import 'package:moviedb/features/movie_detail/domain/entities/genre_entity.dart';
import 'package:moviedb/features/movie_detail/domain/entities/similar_movie_entity.dart';
import 'package:moviedb/features/movie_detail/domain/usecases/get_genres_usecase.dart';
import 'package:moviedb/features/movie_detail/domain/usecases/get_similar_movies_by_id_usecase.dart';
import 'package:moviedb/features/movie_detail/presenter/controller/controller_status.dart';
part 'similar_movies_controller.g.dart';

class SimilarMoviesController = _SimilarMoviesControllerBase
    with _$SimilarMoviesController;

abstract class _SimilarMoviesControllerBase with Store {
  _SimilarMoviesControllerBase(
      {required this.genres, required this.similarMoviesById});

  final GetSimilarMoviesByIdUsecase similarMoviesById;
  final GetGenresUsecase genres;
  final NoParams noparams = NoParams();

  @observable
  ObservableList<SimilarMovieEntity> similarMovies =
      <SimilarMovieEntity>[].asObservable();

  @observable
  ObservableList<GenreEntity> genresMovies = <GenreEntity>[].asObservable();

  @observable
  Failure? error;

  @observable
  ControllerStatus status = ControllerStatus.start;

  @action
  setStatus(ControllerStatus newState) => status = newState;

  @action
  clearError() => error = null;

  @action
  Future<void> getGenres() async {
    final result = await genres(noparams);
    result.fold((l) => error = l, (r) => genresMovies = r.asObservable());

    if (error is Failure) {
      setStatus(ControllerStatus.error);
    }
  }

  @action
  Future<void> getSimilarMoviesById(int id) async {
    clearError();
    setStatus(ControllerStatus.loading);

    final result = await similarMoviesById(id);
    result.fold((l) => error = l, (r) => similarMovies = r.asObservable());

    if (error is Failure) {
      setStatus(ControllerStatus.error);
    } else {
      setStatus(ControllerStatus.sucess);
    }
  }

  String convertGenresIdToName(List<dynamic> genres) {
    String concatString = "";
    for (var id in genres) {
      var genre =
          genresMovies.asObservable().firstWhere((element) => element.id == id);

      if (concatString != "") {
        concatString += ', ' + genre.name;
      } else {
        concatString = genre.name;
      }
    }
    return concatString;
  }
}
