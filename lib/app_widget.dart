import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/app/app_colors.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.black,
        textTheme: const TextTheme(
          subtitle1: TextStyle(color: AppColors.white),
          caption: TextStyle(color: AppColors.white),
        ),
        iconTheme: const IconThemeData(
          color: AppColors.white,
        ),
      ),
      initialRoute: "/",
    ).modular();
  }
}
