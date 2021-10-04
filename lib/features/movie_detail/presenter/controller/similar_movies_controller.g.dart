// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'similar_movies_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SimilarMoviesController on _SimilarMoviesControllerBase, Store {
  final _$similarMoviesAtom =
      Atom(name: '_SimilarMoviesControllerBase.similarMovies');

  @override
  ObservableList<SimilarMovieEntity> get similarMovies {
    _$similarMoviesAtom.reportRead();
    return super.similarMovies;
  }

  @override
  set similarMovies(ObservableList<SimilarMovieEntity> value) {
    _$similarMoviesAtom.reportWrite(value, super.similarMovies, () {
      super.similarMovies = value;
    });
  }

  final _$errorAtom = Atom(name: '_SimilarMoviesControllerBase.error');

  @override
  Failure? get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(Failure? value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$statusAtom = Atom(name: '_SimilarMoviesControllerBase.status');

  @override
  ControllerStatus get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(ControllerStatus value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$getSimilarMoviesByIdAsyncAction =
      AsyncAction('_SimilarMoviesControllerBase.getSimilarMoviesById');

  @override
  Future<void> getSimilarMoviesById(int id) {
    return _$getSimilarMoviesByIdAsyncAction
        .run(() => super.getSimilarMoviesById(id));
  }

  final _$_SimilarMoviesControllerBaseActionController =
      ActionController(name: '_SimilarMoviesControllerBase');

  @override
  dynamic setStatus(ControllerStatus newState) {
    final _$actionInfo = _$_SimilarMoviesControllerBaseActionController
        .startAction(name: '_SimilarMoviesControllerBase.setStatus');
    try {
      return super.setStatus(newState);
    } finally {
      _$_SimilarMoviesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
similarMovies: ${similarMovies},
error: ${error},
status: ${status}
    ''';
  }
}
