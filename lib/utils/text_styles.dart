import 'package:flutter/material.dart';
import 'package:notes_sphere/utils/colors.dart';

class AppTextStyles {
  //title style
  static const TextStyle appTitle = TextStyle(
    fontSize: 28,
    color: AppColors.kWhiteColor,
    fontWeight: FontWeight.bold,
  );

  //subtitle style
  static const TextStyle appSubTitle = TextStyle(
    fontSize: 22,
    color: AppColors.kWhiteColor,
    fontWeight: FontWeight.w500,
  );

  //description large style
  static const TextStyle appDescriptionStyle = TextStyle(
    fontSize: 18,
    color: AppColors.kWhiteColor,
    fontWeight: FontWeight.w400,
  );

  //description small style
  static const TextStyle appDescriptionSmallStyle = TextStyle(
    fontSize: 14,
    color: AppColors.kWhiteColor,
    fontWeight: FontWeight.w400,
  );

  //app body style
  static const TextStyle appBody = TextStyle(
    color: Colors.white,
    fontSize: 16,
  );

  //app buttons style
  static const TextStyle appButton = TextStyle(
    fontSize: 16,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
}
