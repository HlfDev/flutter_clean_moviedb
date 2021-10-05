import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/core/app/app_colors.dart';
import 'package:moviedb/core/app/app_text_styles.dart';
import 'package:moviedb/features/movie_detail/presenter/controller/controller_status.dart';
import 'package:moviedb/features/movie_detail/presenter/controller/movie_controller.dart';
import 'package:moviedb/features/movie_detail/presenter/pages/movie_detail/view/movie_error_view.dart';

import 'view/movie_loading_view.dart';
import 'view/movie_details_view.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({Key? key, required this.movieId}) : super(key: key);
  final int movieId;
  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  final controller = Modular.get<MovieController>();

  @override
  void initState() {
    controller.getMovieById(widget.movieId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (context) {
          switch (controller.status) {
            case ControllerStatus.start:
              return Container();
            case ControllerStatus.loading:
              return const MovieLoadingView();
            case ControllerStatus.error:
              return MovieErrorView(movieId: widget.movieId);
            case ControllerStatus.sucess:
              return const MovieDetailsView();
          }
        },
      ),
    );
  }
}
