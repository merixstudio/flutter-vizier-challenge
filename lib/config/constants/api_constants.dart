part of 'app_constants.dart';

class _ApiConstants {
  const _ApiConstants();

  Duration get dummyLoadingDurationBuffor => Duration(
        seconds: DI.resolve<DummyUtil>().randomInt(
              maxNumber: 0,
            ),
      );

  Duration get dummyLoadingDuration => Duration.zero;
}
