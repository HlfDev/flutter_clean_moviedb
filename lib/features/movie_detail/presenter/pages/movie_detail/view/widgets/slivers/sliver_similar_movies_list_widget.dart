import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/core/app/app_text_styles.dart';

import 'package:moviedb/features/movie_detail/presenter/controller/controller_status.dart';
import 'package:moviedb/features/movie_detail/presenter/controller/similar_movies_controller.dart';

import 'sliver_similar_movies_list_item_widget.dart';

class SliverSimilarMoviesListWidget extends StatefulWidget {
  const SliverSimilarMoviesListWidget({Key? key, required this.movieId})
      : super(key: key);
  final int movieId;
  @override
  _SliverSimilarMoviesListWidgetState createState() =>
      _SliverSimilarMoviesListWidgetState();
}

class _SliverSimilarMoviesListWidgetState
    extends State<SliverSimilarMoviesListWidget> {
  final controller = Modular.get<SimilarMoviesController>();

  @override
  void initState() {
    controller.getSimilarMoviesById(widget.movieId);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Observer(
        builder: (context) {
          switch (controller.status) {
            case ControllerStatus.start:
              return Container();
            case ControllerStatus.loading:
              return Container();
            case ControllerStatus.error:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    Text(
                      'Houve algum problema ao consultar o filme',
                      style: AppTextStyles.nunitoSansWhite16w500,
                    ),
                    ElevatedButton(
                      onPressed: () =>
                          controller.getSimilarMoviesById(widget.movieId),
                      child: const Text('Tentar Novamente!'),
                    )
                  ],
                ),
              );
            case ControllerStatus.sucess:
              return ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                physics: const NeverScrollableScrollPhysics(),
                itemCount: controller.similarMovies.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                    child: SliverSimilarMoviesListItemWidget(
                        similarMovie: controller.similarMovies[index]),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
