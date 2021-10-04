import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/features/movie_detail/presenter/controller/movie_controller.dart';

import 'widgets/icon_button/arrow_back_widget.dart';
import 'widgets/fade/fade_widget.dart';
import 'widgets/slivers/sliver_app_bar_widget.dart';
import 'widgets/slivers/sliver_movie_info_widget.dart';
import 'widgets/slivers/sliver_similar_movies_list_widget.dart';

class MovieDetailsView extends StatefulWidget {
  const MovieDetailsView({Key? key}) : super(key: key);

  @override
  State<MovieDetailsView> createState() => _MovieDetailsViewState();
}

class _MovieDetailsViewState extends State<MovieDetailsView> {
  final controller = Modular.get<MovieController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBarWidget(),
              const SliverMovieInfoWidget(),
              const SliverSimilarMoviesListWidget(),
            ],
          ),
          const ArrowBackWidget(),
          const FadeWidget(),
        ],
      ),
    );
  }
}
