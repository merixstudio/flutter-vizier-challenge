part of 'extensions.dart';

extension ListTextPainterExtensions on List<TextPainter> {
  void calculate(Size size) {
    for (int i = 0; i < length; i++) {
      this[i].layout(
        maxWidth: size.width,
      );
    }
  }

  double get biggestHeight => isNotEmpty
      ? (copy().sorted((a, b) => a.height.compareTo(b.height))).last.height
      : 0.0;

  double get biggestWidth => isNotEmpty
      ? (copy().sorted((a, b) => a.width.compareTo(b.width))).last.width
      : 0.0;

  double get firstHeightOrZero => isNotEmpty ? first.height : 0.0;

  double get lastHeightOrZero => isNotEmpty ? last.height : 0.0;

  double get averageWidthOrZero =>
      isNotEmpty ? (first.width + last.width).half : 0.0;
}
