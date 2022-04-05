part of 'app_dimensions.dart';

class _Radius {
  const _Radius();

  double get defaultValue => 8.0;
  double get borderedButton => 12.0;

  BorderRadius defaultRadius() {
    return BorderRadius.circular(defaultValue);
  }

  BorderRadius borderedRadius() {
    return BorderRadius.circular(borderedButton);
  }
}
