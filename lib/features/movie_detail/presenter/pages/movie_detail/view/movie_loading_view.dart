import 'package:flutter/material.dart';
import 'package:moviedb/core/app/app_colors.dart';

class MovieLoadingView extends StatelessWidget {
  const MovieLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.white,
      ),
    );
  }
}
