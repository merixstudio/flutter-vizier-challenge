part of 'stock_painter.dart';

class _StockMultiBarPainter {
  const _StockMultiBarPainter._();

  static void draw({
    required Canvas canvas,
    required AnimationController controller,
    required StockMultiBarData data,
    required StockPainterItem painterItem,
    required StockMultiBarSettings settings,
    StockMultiBarData? oldData,
    void Function(StockTouchCallbackData data)? onTap,
    StockTouchCallbackData? touchedData,
    UpdateTouchableShapesCallback? setTouchableShapes,
  }) {
    final List<StockDataMultiBarItem> items = data.items;
    if (items.isEmpty) {
      return;
    }
    final List<StockDataMultiBarItem>? oldItems = oldData?.items;
    for (int i = 0; i < items.length; i++) {
      for (int j = 0; j < items[i].items.length; j++) {
        _calculate(
          barItem: items[i].items[j],
          controller: controller,
          data: data,
          index: j,
          maxIndex: items[i].items.length - 1,
          oldBarItem: ((oldItems?.getOrNull(i))?.items)?.getOrNull(j),
          painterItem: painterItem,
          settings: settings,
        );
      }
    }
    final double v1 = (((items.getOrNull(1)?.items)?.first)?.valuePosition)?.dx ?? 0.0;
    final double v2 = (((((items.firstOrNull)?.items)?.lastOrNull)?.valuePosition)?.dx ?? 0.0) +
        (((((items.firstOrNull)?.items)?.lastOrNull)?.currentValueSize)?.width ?? 0.0);
    final double weight = (max(v1, v2) - min(v1, v2)).half * .7;
    for (int i = 0; i < items.length; i++) {
      for (int j = 0; j < items[i].items.length; j++) {
        _calculateTouch(
          barItem: items[i].items[j],
          controller: controller,
          innerIndex: j,
          items: items,
          mainIndex: i,
          oldBarItem: ((oldItems?.getOrNull(i))?.items)?.getOrNull(j),
          painterItem: painterItem,
          weight: weight,
        );
      }
    }
    _drawBars(
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
    required StockDataBarItem barItem,
    required AnimationController controller,
    required StockMultiBarData data,
    required int index,
    required StockPainterItem painterItem,
    required int maxIndex,
    required StockMultiBarSettings settings,
    StockDataBarItem? oldBarItem,
  }) {
    if (barItem.isInitializedValue && oldBarItem?.currentValuePainterItem == painterItem) {
      return;
    }
    final double x = painterItem.size.width * (barItem.x - data.x.min).safeDiv(data.x.calcMax);
    final double height = painterItem.size.height * barItem.value / data.y.max;
    final Size size = Size(settings.thickness, height);
    final Offset position = Offset(
      painterItem.position.dx +
          x -
          settings.thickness.half +
          index * settings.thickness +
          index * 2.0 -
          (maxIndex * settings.thickness + maxIndex * 2.0).half,
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
    required int innerIndex,
    required List<StockDataMultiBarItem> items,
    required int mainIndex,
    required StockPainterItem painterItem,
    required double weight,
    StockDataBarItem? oldBarItem,
  }) {
    if (barItem.isInitializedTouch && oldBarItem?.currentTouchPainterItem == painterItem) {
      return;
    }
    final Offset position = Offset(
      barItem.valuePosition.dx - (innerIndex == 0 ? weight : 0.0),
      painterItem.position.dy,
    );
    final Size size = Size(
      barItem.valueSize.width + (innerIndex != 0 && innerIndex != items[mainIndex].items.length - 1 ? 0.0 : weight),
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
    required List<StockDataMultiBarItem> items,
    required StockMultiBarSettings settings,
    void Function(StockTouchCallbackData data)? onTap,
    UpdateTouchableShapesCallback? setTouchableShapes,
  }) {
    final List<TouchableShape<StockDataBarItem>> shapes = [];
    for (final StockDataMultiBarItem multiBarItem in items) {
      for (final StockDataBarItem barItem in multiBarItem.items) {
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
    }
    setTouchableShapes?.call(shapes);
  }

  static void _drawTooltip({
    required Canvas canvas,
    required StockMultiBarSettings settings,
    required StockTouchCallbackData touchedData,
  }) {
    final StockDataBarItem? item = touchedData.selectedItem.asOrNull();
    if (item == null) {
      return;
    }
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
