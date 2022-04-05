import 'dart:ui';

abstract class TouchableShape<T> {
  TouchableShape({
    required this.data,
  });

  final T data;

  bool isHit(Offset offset);
}
