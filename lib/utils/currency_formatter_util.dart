import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';

@singleton
class CurrencyFormatterUtil {
  static CurrencyFormatterUtil get instance => DI.resolve<CurrencyFormatterUtil>();

  final NumberFormat numberFormat = NumberFormat.currency(
    symbol: '€',
  );

  String format({
    required double value,
  }) {
    return numberFormat.format(value);
  }

  String formatWithChangePrefix({
    required double value,
  }) {
    if (value.isNegative) {
      return format(
        value: value,
      );
    }
    return '+ ${format(value: value)}';
  }

  Color changeColor({
    required double value,
  }) {
    return value.isNegative ? AppColors.error300 : AppColors.success100;
  }
}
