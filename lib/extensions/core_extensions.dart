part of 'extensions.dart';

extension StringExtensions on String {
  String mask(String maskText) {
    return '${this}${maskText.substring(length, maskText.length)}';
  }

  String removeLast({
    int length = 1,
  }) {
    if (this.length > length) {
      return substring(0, this.length - length);
    }
    return '';
  }

  String removeBlank() => replaceAll(' ', '');

  bool get isBlank => !isNotBlank;

  bool get isNotBlank => trim().isNotEmpty;
}

extension ListNullableExtensions<T> on List<T?> {
  List<T> filterNotNull() => [...this]
      .where(
        (element) => element != null,
      )
      .map((e) => e as T)
      .toList();
}

extension ListExtensions<T> on List<T> {
  T? get firstOrNull => isNotEmpty ? first : null;

  T? get lastOrNull => isNotEmpty ? last : null;

  void removeLastIfNotEmpty() => isNotEmpty ? removeLast() : null;

  List<T> copy() => [...this];

  T? getOrNull(int index) => length > index ? this[index] : null;

  T? firstWhereOrNull(bool Function(T element) test) {
    try {
      return firstWhere(test);
    } catch (_) {
      return null;
    }
  }
}

extension DoubleExtensions on double {
  double safeDiv(double value) => value != 0 ? this / value : 0.0;

  double get half => this / 2.0;

  double ceilTo(int value) => this + (value - (this % value));

  double ceilFrom(int value) => this - this % value;

  String get formatUnits {
    final List<String> units = ['k', 'M', 'G', 'T', 'P', 'E', 'Z', 'Y'];
    for (int i = 0; i < units.length; i++) {
      final dec = pow(1000, i + 1);
      if (this <= -dec || this >= dec) {
        final value = this / dec;
        return (value % 1 == 0 ? value.toInt().toString() : value.toStringAsFixed(1)) + units[i];
      }
    }
    return toStringAsFixed(0);
  }
}

extension AsExtension on Object? {
  T as<T>() => this as T;

  T? asOrNull<T>() {
    final self = this;
    return self is T ? self : null;
  }
}

extension ListAsExtension on List<Object?> {
  T as<T>() => this as T;

  List<T> asOrEmpty<T>() {
    try {
      return cast<T>();
    } catch (_) {
      return [];
    }
  }
}
