import 'package:flutter/material.dart';

class AppColors {
  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF0B0B0B);
  static const divider = Color(0xFF0F0F0F);
  static const grey = Color(0xFFE3E3E3);

  static final List<Color> fadeBlackColorListLight = [
    AppColors.black.withOpacity(0.3),
    AppColors.black.withOpacity(0.2),
    AppColors.black.withOpacity(0.1),
    AppColors.black.withOpacity(0.05),
    Colors.transparent,
  ];

  static final List<Color> fadeBlackColorListStrong = [
    AppColors.black,
    AppColors.black.withOpacity(0.8),
    AppColors.black.withOpacity(0.6),
    AppColors.black.withOpacity(0.4),
    AppColors.black.withOpacity(0.25),
    AppColors.black.withOpacity(0.1),
    AppColors.black.withOpacity(0.05),
    Colors.transparent
  ];
}
