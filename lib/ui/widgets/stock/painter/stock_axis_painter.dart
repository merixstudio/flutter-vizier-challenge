part of 'stock_painter.dart';

class _StockAxisPainter {
  const _StockAxisPainter._();

  static void draw({
    required EdgeInsets axisXPadding,
    required StockPainterItem axisXPainterItem,
    required double axisXTextAverageWidth,
    required TextStyle axisXTextStyle,
    required EdgeInsets axisYPadding,
    required StockPainterItem axisYPainterItem,
    required TextStyle axisYTextStyle,
    required double axisYMaxHeight,
    required Canvas canvas,
    required AnimationController controller,
    required StockDataAxis x,
    required StockDataAxis y,
    StockDataAxis? oldX,
    StockDataAxis? oldY,
  }) {
    final double axisXWidth = axisXPainterItem.size.width - axisXTextAverageWidth - axisXPadding.horizontal;
    final Offset axisXPosition = Offset(
      axisXPainterItem.position.dx + axisXTextAverageWidth.half + axisXPadding.left,
      axisXPainterItem.position.dy,
    );
    for (int i = 0; i < x.items.length; i++) {
      final StockDataAxisItem axisItem = x.items[i];
      final StockDataAxisItem? oldAxisItem = (oldX?.items)?.getOrNull(i);
      _calculateX(
        axis: x,
        axisItem: axisItem,
        axisPadding: axisXPadding,
        controller: controller,
        index: i,
        oldAxisItem: oldAxisItem,
        painterItem: axisXPainterItem,
        position: axisXPosition,
        textStyle: axisXTextStyle,
        width: axisXWidth,
      );
      _drawText(
        axisItem: axisItem,
        canvas: canvas,
      );
    }
    for (int i = 0; i < y.items.length; i++) {
      final StockDataAxisItem axisItem = y.items[i];
      final StockDataAxisItem? oldAxisItem = (oldY?.items)?.getOrNull(i);
      _calculateY(
        axis: y,
        axisItem: axisItem,
        axisPadding: axisYPadding,
        controller: controller,
        index: i,
        maxHeight: axisYMaxHeight,
        oldAxisItem: oldAxisItem,
        painterItem: axisYPainterItem,
        textStyle: axisYTextStyle,
      );
      _drawText(
        axisItem: axisItem,
        canvas: canvas,
      );
    }
  }

  static void _calculateX({
    required StockDataAxis axis,
    required StockDataAxisItem axisItem,
    required EdgeInsets axisPadding,
    required AnimationController controller,
    required int index,
    required StockPainterItem painterItem,
    required Offset position,
    required TextStyle textStyle,
    required double width,
    StockDataAxisItem? oldAxisItem,
  }) {
    if (axisItem.isInitializedLabel && oldAxisItem?.currentLabelPainterItem == painterItem) {
      return;
    }
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: axisItem.label,
        style: textStyle,
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    final double x = width * axis.calcValue(index) - textPainter.width.half;
    final Offset newPosition = Offset(
      position.dx + x,
      painterItem.position.dy + axisPadding.top,
    );
    axisItem.initializeLabel(
      controller: controller,
      initialPosition: newPosition,
      initialTextStyle: textStyle.copyWith(
        color: Colors.transparent,
      ),
      oldItem: oldAxisItem,
      painterItem: painterItem,
      position: newPosition,
      textStyle: textStyle,
    );
  }

  static void _calculateY({
    required StockDataAxis axis,
    required StockDataAxisItem axisItem,
    required EdgeInsets axisPadding,
    required AnimationController controller,
    required int index,
    required StockPainterItem painterItem,
    required double maxHeight,
    required TextStyle textStyle,
    StockDataAxisItem? oldAxisItem,
  }) {
    if (axisItem.isInitializedLabel && painterItem == oldAxisItem?.currentLabelPainterItem) {
      return;
    }
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: axisItem.label,
        style: textStyle,
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    final double value = 1.0 - axis.calcValue(index);
    final Offset position = Offset(
      painterItem.position.dx + painterItem.size.width - textPainter.width - axisPadding.right,
      painterItem.position.dy + value * maxHeight + axisPadding.top,
    );
    axisItem.initializeLabel(
      controller: controller,
      initialPosition: position,
      initialTextStyle: textStyle.copyWith(
        color: Colors.transparent,
      ),
      painterItem: painterItem,
      position: position,
      textStyle: textStyle,
      oldItem: oldAxisItem,
    );
  }

  static void _drawText({
    required StockDataAxisItem axisItem,
    required Canvas canvas,
  }) {
    TextPainter(
      text: TextSpan(
        text: axisItem.label,
        style: axisItem.currentLabelTextStyle,
      ),
      textDirection: TextDirection.ltr,
    )
      ..layout()
      ..paint(canvas, axisItem.currentLabelPosition);
  }
}
