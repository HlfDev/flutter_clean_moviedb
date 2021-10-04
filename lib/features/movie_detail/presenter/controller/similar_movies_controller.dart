import 'package:mobx/mobx.dart';
import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:moviedb/features/movie_detail/domain/entities/similar_movie_entity.dart';
import 'package:moviedb/features/movie_detail/domain/usecases/get_similar_movies_by_id_usecase.dart';
import 'package:moviedb/features/movie_detail/presenter/controller/controller_status.dart';
part 'similar_movies_controller.g.dart';

class SimilarMoviesController = _SimilarMoviesControllerBase
    with _$SimilarMoviesController;

abstract class _SimilarMoviesControllerBase with Store {
  _SimilarMoviesControllerBase({required this.similarMoviesById});

  final GetSimilarMoviesByIdUsecase similarMoviesById;

  @observable
  ObservableList<SimilarMovieEntity> similarMovies =
      <SimilarMovieEntity>[].asObservable();

  @observable
  Failure? error;

  @observable
  ControllerStatus status = ControllerStatus.start;

  @action
  setStatus(ControllerStatus newState) => status = newState;

  @action
  Future<void> getSimilarMoviesById(int id) async {
    setStatus(ControllerStatus.loading);

    final result = await similarMoviesById(id);
    result.fold((l) => error = l, (r) => similarMovies = r.asObservable());

    // ignore: unrelated_type_equality_checks
    error != "null"
        ? setStatus(ControllerStatus.sucess)
        : setStatus(ControllerStatus.error);
  }
}
