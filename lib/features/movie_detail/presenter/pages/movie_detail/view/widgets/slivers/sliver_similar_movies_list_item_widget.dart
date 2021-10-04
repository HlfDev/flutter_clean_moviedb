import 'package:flutter/material.dart';
import 'package:moviedb/core/app/app_colors.dart';
import 'package:moviedb/core/app/app_text_styles.dart';
import 'package:moviedb/features/movie_detail/data/datasource/endpoints/moviedb_endpoint.dart';
import 'package:moviedb/features/movie_detail/domain/entities/similar_movie_entity.dart';

class SliverSimilarMoviesListItemWidget extends StatefulWidget {
  const SliverSimilarMoviesListItemWidget(
      {Key? key, required this.similarMovie})
      : super(key: key);

  final SimilarMovieEntity similarMovie;

  @override
  _SliverSimilarMoviesListItemWidgetState createState() =>
      _SliverSimilarMoviesListItemWidgetState();
}

class _SliverSimilarMoviesListItemWidgetState
    extends State<SliverSimilarMoviesListItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: AppColors.black,
        border: Border(
          bottom: BorderSide(color: AppColors.divider, width: 1),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                  child: Image.network(
                    MoviedbEndpoints.getSimilarMovieImageUrl(
                        similarMoviePosterPath: widget.similarMovie.posterPath),
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              widget.similarMovie.originalTitle,
                              style: AppTextStyles.nunitoSansWhite16w500,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(children: [
                          TextSpan(
                            text:
                                '${widget.similarMovie.releaseDate.substring(0, 4)} ',
                            style: AppTextStyles.nunitoSansGrey14w400,
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            padding: const EdgeInsets.all(8.0),
            child: const Icon(
              Icons.check_circle,
              color: Colors.white,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }
}
