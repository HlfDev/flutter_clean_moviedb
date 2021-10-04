import 'package:flutter/material.dart';
import 'package:moviedb/core/app/app_colors.dart';

class ArrowBackWidget extends StatelessWidget {
  const ArrowBackWidget({Key? key}) : super(key: key);

  static const double _topPadding = 36.0;
  static const double _leftPadding = 24.0;

  static const double _circularBorderRadius = 50;
  static const double _opacity = 0.75;
  static const Icon _icon = Icon(Icons.arrow_back_ios_new, size: 24);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: _leftPadding,
        top: _topPadding,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(_circularBorderRadius),
          color: AppColors.black.withOpacity(_opacity),
        ),
        child: IconButton(
          onPressed: () {},
          icon: _icon,
        ),
      ),
    );
  }
}
