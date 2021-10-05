import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/core/app/app_text_styles.dart';
import 'package:moviedb/features/movie_detail/presenter/controller/movie_controller.dart';

class MovieErrorView extends StatelessWidget {
  MovieErrorView({required this.movieId, Key? key}) : super(key: key);

  final int movieId;
  final controller = Modular.get<MovieController>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Houve algum problema ao consultar o filme',
            style: AppTextStyles.nunitoSansWhite16w500,
          ),
          ElevatedButton(
            onPressed: () => controller.getMovieById(movieId),
            child: const Text('Tentar Novamente!'),
          )
        ],
      ),
    );
  }
}
