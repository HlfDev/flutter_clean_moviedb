import 'package:mobx/mobx.dart';
import 'package:moviedb/core/usecase/errors/failures.dart';
import 'package:moviedb/features/movie_detail/domain/entities/movie_entity.dart';
import 'package:moviedb/features/movie_detail/domain/usecases/get_movie_by_id_usecase.dart';
import 'package:moviedb/features/movie_detail/presenter/controller/controller_status.dart';
part 'movie_controller.g.dart';

class MovieController = _MovieControllerBase with _$MovieController;

abstract class _MovieControllerBase with Store {
  _MovieControllerBase({
    required this.movieById,
  });

  final GetMovieByIdUsecase movieById;

  @observable
  MovieEntity movie = const MovieEntity(
    id: 55,
    originalTitle: '',
    popularity: 55,
    posterPath: '',
    voteCount: 55,
  );

  @observable
  ControllerStatus status = ControllerStatus.start;

  @observable
  bool isFavorite = false;

  @action
  toggleFavorite() => isFavorite = !isFavorite;

  @action
  setStatus(ControllerStatus newState) => status = newState;

  @action
  clearError() => error = null;

  @observable
  Failure? error;

  @action
  Future<void> getMovieById(int id) async {
    clearError();
    setStatus(ControllerStatus.loading);
    final result = await movieById(id);
    result.fold((l) => error = l, (r) => movie = r);

    if (error is Failure) {
      setStatus(ControllerStatus.error);
    } else {
      setStatus(ControllerStatus.sucess);
    }
  }
}
