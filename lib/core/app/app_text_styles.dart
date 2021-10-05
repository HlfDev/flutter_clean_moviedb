import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyles {
  static final TextStyle nunitoSansWhite28w800 = GoogleFonts.nunitoSans(
      fontSize: 28, color: AppColors.white, fontWeight: FontWeight.w800);

  static final TextStyle nunitoSansGrey14w400 = GoogleFonts.nunitoSans(
      fontSize: 14, color: AppColors.grey, fontWeight: FontWeight.w400);

  static final TextStyle nunitoSansWhite16w500 = GoogleFonts.nunitoSans(
      fontSize: 16, color: AppColors.white, fontWeight: FontWeight.w600);
}
