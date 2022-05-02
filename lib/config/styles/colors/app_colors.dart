import 'package:flutter/material.dart';
part 'app_colors_border.dart';

class AppColors {
  const AppColors._();

  static const _Border border = _Border();

//Primary
  static const Color primary100 = Color(0xFF8043F9);
  static const Color primary300 = Color(0xFFA17FFD);
  static const Color secondary100 = Color(0xFFFF7000);
  static const Color secondary200 = Color(0xFFFF9843);
  static const Color secondary300 = Color(0xFFFFC18E);
//Neutrals
  static const Color gray100 = Color(0xFF4A4A4A);
  static const Color gray200 = Color(0xFF929292);
  static const Color gray300 = Color(0xFFC9C9C9);
  static const Color gray400 = Color(0xFFE8E7EC);
  static const Color gray500 = Color(0xFFF0F0F0);
  static const Color navy = Color(0xFF1B0E41);
  static const Color navy100 = Color(0xFF331B6D);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF191A1D);
//Semantic
  static const Color info100 = Color(0xFF1570EF);
  static const Color info300 = Color(0xFF80C6FF);
  static const Color error100 = Color(0xFFDA2631);
  static const Color error300 = Color(0xFFFF4150);
  static const Color error500 = Color(0xFFFFE9EA);
  static const Color success100 = Color(0xFF00C090);
  static const Color success500 = Color(0xFF84EBD1);
  static const Color warning100 = Color(0xFFD6A804);
  static const Color warning300 = Color(0xFFFFC700);
  static const Color warning500 = Color(0xFFFEF7D0);
//White
  static Color white08 = white.withOpacity(0.08);
  static Color white12 = white.withOpacity(0.12);
  static Color white16 = white.withOpacity(0.16);
  static Color white32 = white.withOpacity(0.32);
  static Color white60 = white.withOpacity(0.6);
  static Color white64 = white.withOpacity(0.64);
  static Color black08 = white.withOpacity(0.08);
  static Color black12 = white.withOpacity(0.12);
  static Color black32 = white.withOpacity(0.32);
}
