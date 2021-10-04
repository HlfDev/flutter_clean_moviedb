import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/core/app/app_colors.dart';
import 'package:moviedb/features/movie_detail/presenter/controller/controller_status.dart';
import 'package:moviedb/features/movie_detail/presenter/controller/movie_controller.dart';

import 'view/movie_details_view.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  final controller = Modular.get<MovieController>();

  @override
  void initState() {
    controller.getMovieById(550);
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
              return const Center(
                child: CircularProgressIndicator(
                  color: AppColors.white,
                ),
              );
            case ControllerStatus.error:
              return Center(
                child: Text("${controller.error}"),
              );
            case ControllerStatus.sucess:
              return const MovieDetailsView();
          }
        },
      ),
    );
  }
}
