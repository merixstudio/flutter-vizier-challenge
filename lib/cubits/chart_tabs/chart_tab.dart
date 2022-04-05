import 'package:flutter/material.dart';
import 'package:vizier/l10n/app_loc.dart';

enum ChartTab { week, month, year, all }

extension ChartTabExtension on ChartTab {
  String title(BuildContext context) {
    switch (this) {
      case ChartTab.week:
        return AppLoc.of(context).chartTabWeek;
      case ChartTab.month:
        return AppLoc.of(context).chartTabMonth;
      case ChartTab.year:
        return AppLoc.of(context).chartTabYear;
      case ChartTab.all:
        return AppLoc.of(context).chartTabAll;
    }
  }

  int days() {
    switch (this) {
      case ChartTab.week:
        return DateTime.daysPerWeek;
      case ChartTab.month:
        return DateTime.monthsPerYear;
      case ChartTab.year:
        return DateTime.monthsPerYear * 30;
      case ChartTab.all:
        return 0;
    }
  }
}
