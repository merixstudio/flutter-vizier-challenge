part of '../mock_factory.dart';

class _DurationFactory {
  final DummyUtil dummyUtil;

  _DurationFactory({
    required this.dummyUtil,
  });

  static _DurationFactory instance = _DurationFactory(
    dummyUtil: DI.resolve(),
  );

  Duration standard(int days) {
    switch (days) {
      case DateTime.daysPerWeek:
        return const Duration(
          days: 6,
        );
      case DateTime.monthsPerYear:
        return const Duration(
          days: 30,
        );
      case DateTime.monthsPerYear * 30:
        return const Duration(
          days: DateTime.monthsPerYear * 30,
        );
      default:
        return const Duration(
          days: DateTime.monthsPerYear * 30 * 4,
        );
    }
  }

  Duration indexBased(int days, int index) {
    switch (days) {
      case DateTime.daysPerWeek:
        return Duration(
          days: index,
        );
      case DateTime.monthsPerYear:
        return Duration(
          days: 7 * index,
        );
      case DateTime.monthsPerYear * 30:
        return Duration(
          days: 90 * index,
        );
      default:
        return Duration(
          days: 365 * index,
        );
    }
  }
}
