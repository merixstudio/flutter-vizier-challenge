import 'dart:ui';

import 'package:vizier/ui/widgets/stock/models/touchable_shape/touchable_shape.dart';

class RectangleShape<T> extends TouchableShape<T> {
  final Offset rectOffset;
  final Size rectSize;

  RectangleShape({
    required this.rectOffset,
    required this.rectSize,
    required T data,
  }) : super(
          data: data,
        );

  @override
  bool isHit(Offset offset) {
    return rectOffset.dx <= offset.dx &&
        (rectOffset.dx + rectSize.width >= offset.dx) &&
        rectOffset.dy <= offset.dy &&
        (rectOffset.dy + rectSize.height >= offset.dy);
  }

  @override
  bool operator ==(Object other) {
    if (other is! RectangleShape) {
      return false;
    }
    return rectOffset == other.rectOffset && rectSize == other.rectSize && data == other.data;
  }

  @override
  int get hashCode => Object.hashAll([
        rectOffset,
        rectSize,
        data,
      ]);
}
