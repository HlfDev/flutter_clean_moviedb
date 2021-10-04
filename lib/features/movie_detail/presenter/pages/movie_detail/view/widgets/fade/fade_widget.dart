import 'package:flutter/material.dart';
import 'package:moviedb/core/app/app_colors.dart';

class FadeWidget extends StatelessWidget {
  const FadeWidget({Key? key}) : super(key: key);

  static const double _height = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          tileMode: TileMode.clamp,
          colors: AppColors.fadeBlackColorListLight,
        ),
      ),
    );
  }
}
