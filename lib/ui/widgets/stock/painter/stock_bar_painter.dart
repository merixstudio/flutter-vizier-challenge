part of 'stock_painter.dart';

class _StockBarPainter {
  const _StockBarPainter._();

  static void draw({
    required Canvas canvas,
    required AnimationController controller,
    required StockBarData data,
    required StockPainterItem painterItem,
    required StockBarSettings settings,
    StockBarData? oldData,
    UpdateTouchableShapesCallback? setTouchableShapes,
    StockTouchCallbackData? touchedData,
  }) {
    final List<StockDataBarItem> items = data.items;
    if (items.isEmpty) {
      return;
    }
    final List<StockDataBarItem>? oldItems = oldData?.items;
    for (int i = 0; i < items.length; i++) {
      final StockDataBarItem barItem = items[i];
      final StockDataBarItem? oldBarItem = oldItems?.getOrNull(i);
      _calculate(
        barItem: barItem,
        controller: controller,
        data: data,
        index: i,
        oldBarItem: oldBarItem,
        painterItem: painterItem,
        settings: settings,
      );
      _calculateTouch(
        barItem: barItem,
        controller: controller,
        oldBarItem: oldBarItem,
        painterItem: painterItem,
        settings: settings,
      );
    }
    _drawBars(
      canvas: canvas,
      items: items,
      setTouchableShapes: setTouchableShapes,
      settings: settings,
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
    required StockDataBarItem barItem,
    required AnimationController controller,
    required StockBarData data,
    required int index,
    required StockPainterItem painterItem,
    required StockBarSettings settings,
    StockDataBarItem? oldBarItem,
  }) {
    if (barItem.isInitializedValue && oldBarItem?.currentValuePainterItem == painterItem) {
      return;
    }
    final double x = painterItem.size.width * data.x.calcValue(index) - settings.thickness.half;
    final double height = painterItem.size.height * barItem.value.safeDiv(data.y.max);
    final Size size = Size(settings.thickness, height);
    final Offset position = Offset(
      painterItem.position.dx + x,
      painterItem.position.dy + painterItem.size.height - height,
    );
    barItem.initializeValue(
      color: barItem.color,
      controller: controller,
      initialPosition: position,
      oldItem: oldBarItem,
      painterItem: painterItem,
      position: position,
      size: size,
    );
  }

  static void _calculateTouch({
    required StockDataBarItem barItem,
    required AnimationController controller,
    required StockPainterItem painterItem,
    required StockBarSettings settings,
    StockDataBarItem? oldBarItem,
  }) {
    if (barItem.isInitializedTouch && oldBarItem?.currentTouchPainterItem == painterItem) {
      return;
    }
    final Offset position = Offset(
      barItem.currentValuePosition.dx,
      painterItem.position.dy,
    );
    final Size size = Size(
      barItem.currentValueSize.width,
      painterItem.size.height,
    );
    barItem.initializeTouch(
      controller: controller,
      initialPosition: position,
      oldItem: oldBarItem,
      painterItem: painterItem,
      position: position,
      size: size,
    );
  }

  static void _drawBars({
    required Canvas canvas,
    required List<StockDataBarItem> items,
    required StockBarSettings settings,
    required UpdateTouchableShapesCallback? setTouchableShapes,
  }) {
    final List<TouchableShape<StockDataBarItem>> shapes = [];
    for (final StockDataBarItem barItem in items) {
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          barItem.currentValueRect,
          Radius.circular(settings.radius),
        ),
        Paint()..color = barItem.currentValueColor,
      );
      shapes.add(
        RectangleShape<StockDataBarItem>(
          rectOffset: Offset(barItem.currentTouchRect.left, barItem.currentTouchRect.top),
          rectSize: barItem.currentTouchRect.size,
          data: barItem,
        ),
      );
    }
    setTouchableShapes?.call(shapes);
  }

  static void _drawTooltip({
    required Canvas canvas,
    required StockBarSettings settings,
    required StockTouchCallbackData touchedData,
  }) {
    if (touchedData.selectedItem is! StockDataBarItem) {
      return;
    }
    final StockDataBarItem item = touchedData.selectedItem as StockDataBarItem;
    _StockTooltipPainter.draw(
      canvas: canvas,
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 4.0,
      ),
      position: Offset(
        item.currentValuePosition.dx + item.currentValueSize.width.half,
        item.currentValuePosition.dy - 10.0,
      ),
      radius: settings.radius,
      textStyle: AppTextStyles.h6().copyWith(
        color: AppColors.navy,
      ),
      tooltip: item.tooltip,
      triangleSideLength: 10.0,
    );
  }
}
