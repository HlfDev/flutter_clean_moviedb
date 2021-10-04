import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:moviedb/core/app/app_text_styles.dart';
import 'package:moviedb/features/movie_detail/presenter/controller/movie_controller.dart';

class HeaderTitleAndLikeButtonWidget extends StatelessWidget {
  HeaderTitleAndLikeButtonWidget({Key? key}) : super(key: key);

  final controller = Modular.get<MovieController>();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 12,
          child: SizedBox(
            width: 250,
            child: Text(
              controller.movie.originalTitle,
              style: AppTextStyles.nunitoSansWhite28w800,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Observer(builder: (context) {
            return SizedBox(
              height: 25,
              child: IconButton(
                icon: Icon(
                  controller.isFavorite
                      ? Icons.favorite
                      : Icons.favorite_outline,
                  size: 24,
                ),
                onPressed: () {
                  controller.toggleFavorite();
                },
              ),
            );
          }),
        ),
      ],
    );
  }
}
