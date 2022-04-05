import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';

part 'app_text_styles_button.dart';

class AppTextStyles {
  const AppTextStyles._();

  static const _Button button = _Button();

  static TextStyle defaultStyle() {
    return const TextStyle(
      fontFamily: 'Ubuntu',
      letterSpacing: 0.2,
    );
  }

  static TextStyle h1() {
    return defaultStyle().copyWith(
      color: AppColors.navy,
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle h2() {
    return defaultStyle().copyWith(
      color: AppColors.navy,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle h3() {
    return defaultStyle().copyWith(
      color: AppColors.navy,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle h4() {
    return defaultStyle().copyWith(
      color: AppColors.navy,
      fontSize: 18.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle h5() {
    return defaultStyle().copyWith(
      color: AppColors.navy,
      fontSize: 16.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle h6() {
    return defaultStyle().copyWith(
      color: AppColors.navy,
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle text1() {
    return defaultStyle().copyWith(
      color: AppColors.black,
      fontSize: 16.0,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle text2() {
    return defaultStyle().copyWith(
      color: AppColors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    );
  }

  static TextStyle caption1() {
    return defaultStyle().copyWith(
      color: AppColors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle caption1Bold() {
    return defaultStyle().copyWith(
      color: AppColors.black,
      fontSize: 14.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle caption2() {
    return defaultStyle().copyWith(
      color: AppColors.black,
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle caption2Bold() {
    return defaultStyle().copyWith(
      color: AppColors.black,
      fontSize: 12.0,
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle caption3() {
    return defaultStyle().copyWith(
      color: AppColors.black,
      fontSize: 10.0,
      fontWeight: FontWeight.w500,
    );
  }
}
