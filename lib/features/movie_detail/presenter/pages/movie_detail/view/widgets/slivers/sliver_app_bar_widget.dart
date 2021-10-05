import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/core/app/app_colors.dart';
import 'package:moviedb/features/movie_detail/data/datasource/endpoints/moviedb_endpoint.dart';
import 'package:moviedb/features/movie_detail/presenter/controller/movie_controller.dart';

class SliverAppBarWidget extends StatelessWidget {
  SliverAppBarWidget({Key? key}) : super(key: key);
  final controller = Modular.get<MovieController>();

  static const double _containerHeight = 100;
  static const double _expandedHeight = 325;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      stretch: true,
      backgroundColor: AppColors.black,
      toolbarHeight: 0,
      expandedHeight: _expandedHeight,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(
          MoviedbEndpoints.getMovieImageUrl(
              moviePosterPath: controller.movie.posterPath),
          fit: BoxFit.cover,
        ),
        stretchModes: const [StretchMode.zoomBackground],
        titlePadding: EdgeInsets.zero,
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(_containerHeight),
        child: Container(
          height: _containerHeight,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                tileMode: TileMode.clamp,
                colors: AppColors.fadeBlackColorListStrong),
          ),
        ),
      ),
    );
  }
}
