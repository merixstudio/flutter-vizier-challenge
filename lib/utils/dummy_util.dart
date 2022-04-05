import 'dart:math';

import 'package:injectable/injectable.dart';

@injectable
class DummyUtil {
  final Random _random = Random();

  static const String _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';

  int randomInt({
    int minNumber = 0,
    int maxNumber = 10,
  }) =>
      _random.nextInt(maxNumber - minNumber) + minNumber;

  double randomDouble({
    int minNumber = 0,
    int maxNumber = 10,
  }) =>
      randomInt(minNumber: minNumber, maxNumber: maxNumber) + _random.nextDouble();

  String randomString({
    int length = 64,
  }) =>
      String.fromCharCodes(
        Iterable.generate(
          length,
          (_) => _chars.codeUnitAt(
            _random.nextInt(_chars.length),
          ),
        ),
      );

  bool randomBool() => _random.nextBool();
}
