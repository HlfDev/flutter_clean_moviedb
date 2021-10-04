// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MovieController on _MovieControllerBase, Store {
  final _$movieAtom = Atom(name: '_MovieControllerBase.movie');

  @override
  MovieEntity get movie {
    _$movieAtom.reportRead();
    return super.movie;
  }

  @override
  set movie(MovieEntity value) {
    _$movieAtom.reportWrite(value, super.movie, () {
      super.movie = value;
    });
  }

  final _$statusAtom = Atom(name: '_MovieControllerBase.status');

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

  final _$isFavoriteAtom = Atom(name: '_MovieControllerBase.isFavorite');

  @override
  bool get isFavorite {
    _$isFavoriteAtom.reportRead();
    return super.isFavorite;
  }

  @override
  set isFavorite(bool value) {
    _$isFavoriteAtom.reportWrite(value, super.isFavorite, () {
      super.isFavorite = value;
    });
  }

  final _$errorAtom = Atom(name: '_MovieControllerBase.error');

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

  final _$getMovieByIdAsyncAction =
      AsyncAction('_MovieControllerBase.getMovieById');

  @override
  Future<void> getMovieById(int id) {
    return _$getMovieByIdAsyncAction.run(() => super.getMovieById(id));
  }

  final _$_MovieControllerBaseActionController =
      ActionController(name: '_MovieControllerBase');

  @override
  dynamic toggleFavorite() {
    final _$actionInfo = _$_MovieControllerBaseActionController.startAction(
        name: '_MovieControllerBase.toggleFavorite');
    try {
      return super.toggleFavorite();
    } finally {
      _$_MovieControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setStatus(ControllerStatus newState) {
    final _$actionInfo = _$_MovieControllerBaseActionController.startAction(
        name: '_MovieControllerBase.setStatus');
    try {
      return super.setStatus(newState);
    } finally {
      _$_MovieControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
movie: ${movie},
status: ${status},
isFavorite: ${isFavorite},
error: ${error}
    ''';
  }
}
