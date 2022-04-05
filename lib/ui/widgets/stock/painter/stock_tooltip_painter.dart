part of 'stock_painter.dart';

class _StockTooltipPainter {
  const _StockTooltipPainter._();

  static void draw({
    required Canvas canvas,
    required EdgeInsets padding,
    required Offset position,
    required double radius,
    required TextStyle textStyle,
    required String tooltip,
    required double triangleSideLength,
  }) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: tooltip,
        style: textStyle,
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    final widthHalf = textPainter.width.half;
    final height = textPainter.height;
    final triangleHeight = triangleSideLength * 0.5;
    final rectanglePath = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Offset(
                position.dx - padding.horizontal.half - widthHalf,
                position.dy - height - padding.top - triangleHeight,
              ) &
              Size(
                textPainter.width + padding.horizontal,
                textPainter.height + padding.vertical,
              ),
          Radius.circular(radius),
        ),
      );
    final trianglePath = Path()
      ..moveTo(
        position.dx - triangleSideLength.half,
        position.dy + padding.bottom - triangleHeight,
      )
      ..lineTo(
        position.dx + triangleSideLength.half,
        position.dy + padding.bottom - triangleHeight,
      )
      ..lineTo(
        position.dx,
        position.dy + triangleHeight + padding.bottom - triangleHeight,
      )
      ..close();
    canvas
      ..drawPath(
        rectanglePath,
        Paint()..color = Colors.white,
      )
      ..drawPath(
        trianglePath,
        Paint()..color = Colors.white,
      );
    textPainter.paint(
      canvas,
      Offset(position.dx - widthHalf, position.dy - height - triangleHeight),
    );
  }
}
