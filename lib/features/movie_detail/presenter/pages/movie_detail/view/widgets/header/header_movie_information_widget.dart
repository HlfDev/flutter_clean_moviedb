import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/core/app/app_colors.dart';
import 'package:moviedb/core/app/app_text_styles.dart';
import 'package:moviedb/core/usecase/converter/numbers_converters.dart';
import 'package:moviedb/features/movie_detail/presenter/controller/movie_controller.dart';

class HeaderMovieInformationWidget extends StatelessWidget {
  HeaderMovieInformationWidget({Key? key}) : super(key: key);

  final controller = Modular.get<MovieController>();
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.favorite,
          color: AppColors.grey,
          size: 18,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '${Converters.kmbConverter(controller.movie.voteCount)} Likes',
          style: AppTextStyles.nunitoSansGrey14w400,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(
          width: 20,
        ),
        const Icon(
          Icons.circle_outlined,
          color: AppColors.grey,
          size: 18,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '${controller.movie.popularity} Views',
          style: AppTextStyles.nunitoSansGrey14w400,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
