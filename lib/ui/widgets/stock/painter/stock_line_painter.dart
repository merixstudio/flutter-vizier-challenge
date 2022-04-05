part of 'stock_painter.dart';

class _StockLinePainter {
  const _StockLinePainter._();

  static void draw({
    required Canvas canvas,
    required AnimationController controller,
    required StockLineData data,
    required StockPainterItem painterItem,
    required StockLineSettings settings,
    required List<TextPainter> textPainter,
    StockTouchCallbackData? touchedData,
    UpdateTouchableShapesCallback? setTouchableShapes,
    StockLineData? oldData,
    void Function(StockTouchCallbackData data)? onTap,
  }) {
    final List<StockDataLineItem> items = data.items.asOrEmpty();
    if (items.isEmpty) {
      return;
    }
    final List<StockDataLineItem>? oldItems = (oldData?.items)?.asOrEmpty();
    for (int i = 0; i < items.length; i++) {
      final StockDataLineItem lineItem = items[i];
      _calculate(
        controller: controller,
        data: data,
        index: i,
        lineItem: lineItem,
        oldItems: oldItems,
        oldLineItem: oldItems?.getOrNull(i),
        painterItem: painterItem,
        settings: settings,
      );
    }
    final double v1 = (items.getOrNull(1)?.valuePosition)?.dx ?? 0.0;
    final double v2 = (items.firstOrNull?.valuePosition)?.dx ?? 0.0;
    final double weight = max(v1, v2) - min(v1, v2);
    for (int i = 0; i < items.length; i++) {
      final StockDataLineItem lineItem = items[i];
      _calculateTouch(
        controller: controller,
        lineItem: lineItem,
        oldLineItem: oldItems?.getOrNull(i),
        painterItem: painterItem,
        textPainter: textPainter,
        weight: weight,
      );
    }
    if (touchedData != null) {
      _drawTouchedArea(
        canvas: canvas,
        settings: settings,
        touchedData: touchedData,
      );
    }
    _drawLines(
      canvas: canvas,
      items: items,
      onTap: onTap,
      settings: settings,
      setTouchableShapes: setTouchableShapes,
    );
    if (touchedData != null) {
      _drawTooltip(
        canvas: canvas,
        settings: settings,
        touchedData: touchedData,
      );
    }
  }

  static void _calculate({
    required AnimationController controller,
    required StockLineData data,
    required int index,
    required StockDataLineItem lineItem,
    required StockPainterItem painterItem,
    required StockLineSettings settings,
    List<StockDataLineItem>? oldItems,
    StockDataLineItem? oldLineItem,
  }) {
    if (lineItem.isInitializedValue && oldLineItem?.currentValuePainterItem == painterItem) {
      return;
    }
    final double x = painterItem.size.width * data.x.calcValue(index) - settings.thickness.half;
    final double height = painterItem.size.height * lineItem.value.safeDiv(data.y.max);
    final Offset pos = Offset(
      painterItem.position.dx + x + settings.thickness.half,
      painterItem.position.dy + painterItem.size.height - height,
    );
    lineItem.initializeValue(
      color: lineItem.color,
      controller: controller,
      initialPosition: oldItems != null
          ? Offset(
              painterItem.position.dx + painterItem.size.width,
              oldItems.last.valuePosition.dy,
            )
          : Offset(pos.dx, painterItem.position.dy + painterItem.size.height),
      oldItem: oldLineItem,
      painterItem: painterItem,
      position: pos,
    );
  }

  static void _calculateTouch({
    required AnimationController controller,
    required StockDataLineItem lineItem,
    required StockPainterItem painterItem,
    required List<TextPainter> textPainter,
    required double weight,
    StockDataLineItem? oldLineItem,
  }) {
    if (lineItem.isInitializedTouch && oldLineItem?.currentTouchPainterItem == painterItem) {
      return;
    }
    final Offset position = Offset(
      lineItem.valuePosition.dx - weight.half,
      painterItem.position.dy - textPainter.firstHeightOrZero.half,
    );
    final Size size = Size(
      weight,
      painterItem.size.height + textPainter.firstHeightOrZero,
    );
    lineItem.initializeTouch(
      controller: controller,
      initialPosition: position,
      oldItem: oldLineItem,
      painterItem: painterItem,
      position: position,
      size: size,
    );
  }

  static void _drawLines({
    required Canvas canvas,
    required StockLineSettings settings,
    required List<StockDataLineItem> items,
    void Function(StockTouchCallbackData data)? onTap,
    UpdateTouchableShapesCallback? setTouchableShapes,
  }) {
    final Path curvePath = Path();
    final Paint paint = Paint()
      ..strokeWidth = settings.thickness
      ..style = PaintingStyle.stroke;
    late Offset previousPos;
    final List<TouchableShape<StockDataLineItem>> shapes = [];
    for (int i = 0; i < items.length; i++) {
      final StockDataLineItem lineItem = items[i];
      final Offset currentPos = lineItem.currentValuePosition;
      if (i < 1) {
        curvePath.moveTo(currentPos.dx, currentPos.dy);
      } else {
        final Offset controlPos = Offset(
          previousPos.dx + (currentPos.dx - previousPos.dx).half,
          previousPos.dy,
        );
        final Offset controlPos2 = Offset(
          currentPos.dx + (previousPos.dx - currentPos.dx).half,
          currentPos.dy,
        );
        curvePath.cubicTo(
          controlPos.dx,
          controlPos.dy,
          controlPos2.dx,
          controlPos2.dy,
          currentPos.dx,
          currentPos.dy,
        );
      }
      previousPos = currentPos;
      shapes.add(
        RectangleShape<StockDataLineItem>(
          rectOffset: Offset(lineItem.currentTouchRect.left, lineItem.currentTouchRect.top),
          rectSize: lineItem.currentTouchRect.size,
          data: lineItem,
        ),
      );
    }
    canvas.drawPath(
      curvePath,
      paint..color = items.first.currentValueColor,
    );
    setTouchableShapes?.call(shapes);
  }

  static void _drawTooltip({
    required Canvas canvas,
    required StockLineSettings settings,
    required StockTouchCallbackData touchedData,
  }) {
    final StockDataLineItem? item = touchedData.selectedItem.asOrNull();
    if (item == null) {
      return;
    }
    canvas
      ..drawCircle(
        item.currentValuePosition,
        7,
        Paint()..color = AppColors.navy100,
      )
      ..drawCircle(
        item.currentValuePosition,
        4,
        Paint()..color = Colors.white,
      );
    _StockTooltipPainter.draw(
      canvas: canvas,
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 4.0,
      ),
      position: Offset(
        item.currentValuePosition.dx,
        item.currentValuePosition.dy - 14.0,
      ),
      radius: settings.radius,
      textStyle: AppTextStyles.h6().copyWith(
        color: AppColors.primary100,
      ),
      tooltip: item.tooltip,
      triangleSideLength: 10.0,
    );
  }

  static void _drawTouchedArea({
    required Canvas canvas,
    required StockLineSettings settings,
    required StockTouchCallbackData touchedData,
  }) {
    final StockDataLineItem? lineItem = touchedData.selectedItem.asOrNull();
    if (lineItem == null) {
      return;
    }
    final Size size = Size(lineItem.currentTouchSize.width * 0.8, lineItem.currentTouchSize.height);
    final Offset position = Offset(
      lineItem.currentTouchPosition.dx + (lineItem.currentTouchSize.width - size.width).half,
      lineItem.currentTouchPosition.dy,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        position & size,
        Radius.circular(settings.radius),
      ),
      Paint()..color = AppColors.navy100,
    );
  }
}
