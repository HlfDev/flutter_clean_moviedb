import 'package:flutter/material.dart';
import 'package:moviedb/core/app/app_colors.dart';
import 'package:moviedb/features/movie_detail/presenter/pages/movie_detail/view/widgets/header/header_movie_information_widget.dart';
import 'package:moviedb/features/movie_detail/presenter/pages/movie_detail/view/widgets/header/header_title_and_like_button_widget.dart';

class SliverMovieInfoWidget extends StatelessWidget {
  const SliverMovieInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(16),
        color: AppColors.black,
        child: Column(
          children: [
            HeaderTitleAndLikeButtonWidget(),
            const SizedBox(height: 10),
            HeaderMovieInformationWidget(),
          ],
        ),
      ),
    );
  }
}
