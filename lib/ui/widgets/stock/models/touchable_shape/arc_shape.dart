import 'dart:math';
import 'dart:ui';

import 'package:vizier/ui/widgets/stock/models/touchable_shape/touchable_shape.dart';

class ArcShape<T> extends TouchableShape<T> {
  static const twoPi = 2.0 * pi;

  final Offset center;
  final double innerRadius;
  final double outerRadius;
  final double startAngle;
  final double sweepAngle;

  ArcShape({
    required this.center,
    required this.innerRadius,
    required this.outerRadius,
    required double startAngle,
    required this.sweepAngle,
    required T data,
  })  : startAngle = startAngle % twoPi,
        super(
          data: data,
        );

  @override
  bool isHit(Offset offset) {
    final double x = offset.dx - center.dx;
    final double y = offset.dy - center.dy;
    final double radius = sqrt(x * x + y * y);
    final double cosine = x / radius;
    final double sine = y / radius;
    final double arcCosine = acos(cosine);
    final double angle = (sine >= 0) ? arcCosine : twoPi - arcCosine;
    if (radius < innerRadius || radius > outerRadius) {
      return false;
    }
    final double endAngle = startAngle + sweepAngle;
    if (endAngle >= twoPi) {
      if ((startAngle <= angle && angle < twoPi) || (0 <= angle && angle <= endAngle % twoPi)) {
        return true;
      }
    } else {
      if (startAngle <= angle && angle <= endAngle) {
        return true;
      }
    }
    return false;
  }

  @override
  bool operator ==(Object other) {
    if (other is! ArcShape) {
      return false;
    }
    return center == other.center &&
        innerRadius == other.innerRadius &&
        outerRadius == other.outerRadius &&
        startAngle == other.startAngle &&
        sweepAngle == other.sweepAngle &&
        data == other.data;
  }

  @override
  int get hashCode => Object.hashAll([
        center,
        innerRadius,
        outerRadius,
        startAngle,
        sweepAngle,
        data,
      ]);
}
