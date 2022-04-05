part of 'stock_painter.dart';

class _StockCandlePainter {
  const _StockCandlePainter._();

  static void draw({
    required Canvas canvas,
    required AnimationController controller,
    required StockCandleData data,
    required StockPainterItem painterItem,
    required StockCandleSettings settings,
    StockCandleData? oldData,
    StockTouchCallbackData? touchedData,
    UpdateTouchableShapesCallback? setTouchableShapes,
  }) {
    final List<StockDataCandleItem> items = data.items;
    if (items.isEmpty) {
      return;
    }
    final List<StockDataCandleItem>? oldItems = oldData?.items;
    final double widthCandle = painterItem.size.width / data.x.items.length * 0.3;
    for (int i = 0; i < data.items.length; i++) {
      final StockDataCandleItem candleItem = items[i];
      final StockDataCandleItem? oldCandleItem = oldItems?.getOrNull(i);
      final double x = painterItem.size.width * (candleItem.x - data.x.min).safeDiv(data.x.calcMax);
      _calculateValue1(
        controller: controller,
        data: data,
        item: candleItem,
        oldItem: oldCandleItem,
        painterItem: painterItem,
        widthCandle: widthCandle,
        x: x,
      );
      _calculateValue2(
        controller: controller,
        data: data,
        item: candleItem,
        oldItem: oldCandleItem,
        painterItem: painterItem,
        x: x,
      );
      _calculateTouch(
        candleItem: candleItem,
        controller: controller,
        oldCandleItem: oldCandleItem,
        painterItem: painterItem,
      );
    }
    _drawCandles(
      canvas: canvas,
      items: items,
      settings: settings,
      setTouchableShapes: setTouchableShapes,
    );
  }

  static void _calculateValue1({
    required AnimationController controller,
    required StockCandleData data,
    required StockDataCandleItem item,
    required StockPainterItem painterItem,
    required double widthCandle,
    required double x,
    StockDataCandleItem? oldItem,
  }) {
    if (item.value1.isInitialized && (oldItem?.value1)?.painterItem == painterItem) {
      return;
    }
    final Size size = Size(
      widthCandle,
      painterItem.size.height * item.value1.calcMax.safeDiv(data.y.calcMax),
    );
    final Offset position = Offset(
      painterItem.position.dx + x - size.width.half,
      painterItem.position.dy + painterItem.size.height * (data.y.max - item.value1.max).safeDiv(data.y.calcMax),
    );
    item.value1.initialize(
      color: item.color,
      controller: controller,
      oldItem: oldItem?.value1,
      initialPosition: Offset(
        position.dx,
        painterItem.position.dy + painterItem.size.height,
      ),
      painterItem: painterItem,
      position: position,
      size: size,
    );
  }

  static void _calculateValue2({
    required AnimationController controller,
    required StockCandleData data,
    required StockDataCandleItem item,
    required StockPainterItem painterItem,
    required double x,
    StockDataCandleItem? oldItem,
  }) {
    if (item.value2.isInitialized && (oldItem?.value2)?.painterItem == painterItem) {
      return;
    }
    final Size size = Size(
      1.0,
      painterItem.size.height * item.value2.calcMax.safeDiv(data.y.calcMax),
    );
    final Offset position = Offset(
      painterItem.position.dx + x - size.width.half,
      painterItem.position.dy + painterItem.size.height * (data.y.max - item.value2.max).safeDiv(data.y.calcMax),
    );
    item.value2.initialize(
      color: item.color,
      controller: controller,
      oldItem: oldItem?.value2,
      initialPosition: Offset(
        position.dx,
        painterItem.position.dy + painterItem.size.height,
      ),
      painterItem: painterItem,
      position: position,
      size: size,
    );
  }

  static void _calculateTouch({
    required StockDataCandleItem candleItem,
    required AnimationController controller,
    required StockPainterItem painterItem,
    StockDataCandleItem? oldCandleItem,
  }) {
    if (candleItem.isInitializedTouch && oldCandleItem?.currentTouchPainterItem == painterItem) {
      return;
    }

    final Offset position = Offset(
      min(candleItem.value1.position.dx, candleItem.value2.position.dx),
      painterItem.position.dy,
    );
    final Size size = Size(
      max(candleItem.value1.size.width, candleItem.value2.size.width),
      painterItem.size.height,
    );
    candleItem.initializeTouch(
      controller: controller,
      initialPosition: position,
      oldItem: oldCandleItem,
      painterItem: painterItem,
      position: position,
      size: size,
    );
  }

  static void _drawCandles({
    required Canvas canvas,
    required List<StockDataCandleItem> items,
    required StockCandleSettings settings,
    UpdateTouchableShapesCallback? setTouchableShapes,
  }) {
    final List<TouchableShape<StockDataCandleItem>> shapes = [];
    for (final StockDataCandleItem candleItem in items) {
      canvas
        ..drawRRect(
          RRect.fromRectAndRadius(
            candleItem.value1.currentRect,
            Radius.circular(settings.radius),
          ),
          Paint()..color = candleItem.value1.currentColor,
        )
        ..drawRRect(
          RRect.fromRectAndRadius(
            candleItem.value2.currentRect,
            Radius.circular(settings.radius),
          ),
          Paint()..color = candleItem.value2.currentColor,
        );
      shapes.add(
        RectangleShape<StockDataCandleItem>(
          rectOffset: Offset(candleItem.currentTouchRect.left, candleItem.currentTouchRect.top),
          rectSize: candleItem.currentTouchRect.size,
          data: candleItem,
        ),
      );
      setTouchableShapes?.call(shapes);
    }
  }
}
