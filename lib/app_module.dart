import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'features/movie_detail/data/datasource/movie_datasource_implementation.dart';
import 'features/movie_detail/data/datasource/similar_movies_datasource_implementation.dart';
import 'features/movie_detail/data/repositories/movie_repository_implementation.dart';
import 'features/movie_detail/data/repositories/similar_movies_repository_implementation.dart';
import 'features/movie_detail/domain/usecases/get_movie_by_id_usecase.dart';
import 'features/movie_detail/domain/usecases/get_similar_movies_by_id_usecase.dart';

import 'features/movie_detail/presenter/controller/movie_controller.dart';
import 'features/movie_detail/presenter/controller/similar_movies_controller.dart';
import 'features/movie_detail/presenter/pages/movie_detail/movie_detail_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => MovieController(
          movieById: i(),
        )),
    Bind.lazySingleton((i) => SimilarMoviesController(
          similarMoviesById: i(),
        )),
    Bind.lazySingleton((i) => GetMovieByIdUsecase(i())),
    Bind.lazySingleton((i) => GetSimilarMoviesByIdUsecase(i())),
    Bind.lazySingleton((i) => MovieRepositoryImplementation(i())),
    Bind.lazySingleton((i) => SimilarMoviesRepositoryImplementation(i())),
    Bind.lazySingleton((i) => MovieDatasouceImplementation(httpClient: i())),
    Bind.lazySingleton(
        (i) => SimilarMoviesDatasouceImplementation(httpClient: i())),
    Bind.lazySingleton((i) => Dio()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => const MovieDetailPage()),
  ];
}
