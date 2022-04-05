import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
import 'package:vizier/config/injector/di.dart';

@singleton
class DateFormatterUtil {
  static DateFormatterUtil get instance => DI.resolve<DateFormatterUtil>();

  String? format({
    required DateTime? date,
    String? pattern,
  }) {
    return date != null ? DateFormat(pattern).format(date) : null;
  }

  String? formatDay({
    required DateTime? date,
  }) {
    return date != null ? DateFormat.EEEE().format(date) : null;
  }

  String formatInterval({
    required DateTime? from,
    required DateTime? to,
  }) {
    if (from == null || to == null) {
      return '';
    }
    final DateFormat dateFormat = DateFormat.MMMMd();
    final String fromString;
    if (from.year != to.year) {
      fromString = DateFormat.yMMMMd().format(from);
    } else {
      fromString = dateFormat.format(from);
    }
    final String toString;
    if (from.year == to.year && from.month == to.month) {
      toString = DateFormat.d().format(to);
    } else {
      if (from.year != to.year) {
        toString = DateFormat.yMMMMd().format(to);
      } else {
        toString = dateFormat.format(to);
      }
    }
    return '$fromString - $toString';
  }

  String formatTitleInterval({
    required DateTime? from,
    required DateTime? to,
  }) {
    if (from == null || to == null) {
      return '';
    }
    if (from.month == to.month && from.year == to.year) {
      return DateFormat.yMMMM().format(from);
    } else if (from.month != to.month && from.year == to.year) {
      return '${DateFormat.MMM().format(from)} - ${DateFormat.yMMM().format(to)}';
    } else {
      return '${DateFormat.yM().format(from)} - ${DateFormat.yM().format(to)}';
    }
  }

  String formatContentInterval({
    required DateTime? from,
    required DateTime? to,
  }) {
    if (from == null || to == null) {
      return '';
    }
    final DateFormat dateFormat = DateFormat.d();

    return '${dateFormat.format(from)} - ${dateFormat.format(to)}';
  }
}
