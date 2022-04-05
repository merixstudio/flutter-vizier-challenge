part of 'stock_painter.dart';

class _StockMultiPiePainter {
  const _StockMultiPiePainter._();

  static double _sliceCursor = 0.0;

  static void draw({
    required Canvas canvas,
    required AnimationController controller,
    required StockMultiPieData data,
    required StockPainterItem painterItem,
    required StockMultiPieSettings settings,
    StockMultiPieData? oldData,
    void Function(StockTouchCallbackData data)? onTap,
    StockTouchCallbackData? touchedData,
    UpdateTouchableShapesCallback? setTouchableShapes,
  }) {
    final List<StockDataMultiPieItem> items = data.items;
    if (items.isEmpty) {
      return;
    }

    final List<StockDataMultiPieItem>? oldItems = oldData?.items;
    _sliceCursor = 0.0;
    for (int i = 0; i < items.length; i++) {
      final double gapSweepSize = items[i].items.length < 2 ? 0 : settings.gapSweepAngle * items[i].items.length;
      final double sliceSweepTotal = 360.0 - gapSweepSize;
      final double total = items[i].items.map((e) => e.amount).sum;
      _sliceCursor = settings.angleOffset + settings.gapSweepAngle.half;
      for (int j = 0; j < items[i].items.length; j++) {
        _calculate(
          controller: controller,
          pieItem: items[i].items[j],
          sliceSweepTotal: sliceSweepTotal,
          total: total,
          sliceCursor: _sliceCursor,
          gapSweepAngle: settings.gapSweepAngle,
          oldPieItem: ((oldItems?.getOrNull(i))?.items)?.getOrNull(j),
        );
      }
    }
    _drawPies(
      canvas: canvas,
      items: items,
      onTap: onTap,
      painterItem: painterItem,
      settings: settings,
      setTouchableShapes: setTouchableShapes,
    );
    _drawContents(
      canvas: canvas,
      data: data,
      painterItem: painterItem,
      settings: settings,
    );
    if (touchedData != null) {
      _drawTooltip(
        canvas: canvas,
        painterItem: painterItem,
        settings: settings,
        touchedData: touchedData,
      );
    }
  }

  static void _calculate({
    required AnimationController controller,
    required StockDataPieItem pieItem,
    required double sliceSweepTotal,
    required double total,
    required double sliceCursor,
    required double gapSweepAngle,
    StockDataPieItem? oldPieItem,
  }) {
    if (pieItem.isInitializedValue) {
      return;
    }
    final double slicePercentage = pieItem.amount * 100.0 / total;
    final double currentSweepDegree = slicePercentage * sliceSweepTotal / 100.0;
    pieItem.initializeValue(
      color: pieItem.color,
      controller: controller,
      initialStartAngle: 0.0,
      initialSweepAngle: 0.0,
      oldAnimation: oldPieItem,
      startAngle: _degreeToRad(sliceCursor + 360.0 * 2.0),
      sweepAngle: _degreeToRad(currentSweepDegree),
    );
    _sliceCursor += currentSweepDegree + gapSweepAngle;
  }

  static void _drawContents({
    required Canvas canvas,
    required StockMultiPieData data,
    required StockPainterItem painterItem,
    required StockMultiPieSettings settings,
  }) {
    final TextPainter titleTextPainter = TextPainter(
      text: TextSpan(
        text: data.title,
        style: settings.titleTextStyle,
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    final TextPainter contentTextPainter = TextPainter(
      text: TextSpan(
        text: data.content,
        style: settings.contentTextStyle,
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    final Offset positionTitle = Offset(
      (painterItem.position.dx + painterItem.size.width - titleTextPainter.width).half,
      (painterItem.position.dy +
              painterItem.size.height -
              titleTextPainter.height -
              contentTextPainter.height -
              settings.paddingBetweenTexts)
          .half,
    );
    final Offset positionContent = Offset(
      (painterItem.position.dx + painterItem.size.width - contentTextPainter.width).half,
      positionTitle.dy + titleTextPainter.height + settings.paddingBetweenTexts,
    );
    titleTextPainter.paint(
      canvas,
      positionTitle,
    );
    contentTextPainter.paint(
      canvas,
      positionContent,
    );
  }

  static void _drawPies({
    required Canvas canvas,
    required List<StockDataMultiPieItem> items,
    required StockPainterItem painterItem,
    required StockMultiPieSettings settings,
    void Function(StockTouchCallbackData data)? onTap,
    UpdateTouchableShapesCallback? setTouchableShapes,
  }) {
    final Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeWidth = settings.strokeWidth;
    final double radius = painterItem.size.height * .35;
    final centerX = painterItem.size.width.half;
    final centerY = painterItem.size.height.half;
    final List<TouchableShape<StockDataPieItem>> shapes = [];
    for (int i = 0; i < items.length; i++) {
      final double itemRadius = radius + i * settings.gapBetweenChartCircles;
      final Rect rect = Rect.fromCircle(
        center: Offset(centerX, centerY),
        radius: itemRadius,
      );
      for (int j = 0; j < items[i].items.length; j++) {
        final StockDataPieItem pieItem = items[i].items[j];
        canvas.drawArc(
          rect,
          pieItem.currentValueStart,
          pieItem.currentValueSweep,
          false,
          paint..color = pieItem.currentValueColor,
        );
        const double twoPi = 2.0 * pi;
        final double circumference = itemRadius * twoPi;
        final double strokeAngle = twoPi * settings.strokeWidth / circumference;
        shapes.add(
          ArcShape<StockDataPieItem>(
            center: rect.center,
            innerRadius: itemRadius - settings.strokeWidth,
            outerRadius: itemRadius + settings.strokeWidth,
            startAngle: pieItem.currentValueStart - strokeAngle,
            sweepAngle: pieItem.currentValueSweep + 2.0 * strokeAngle,
            data: pieItem,
          ),
        );
      }
    }
    setTouchableShapes?.call(shapes);
  }

  static void _drawTooltip({
    required Canvas canvas,
    required StockPainterItem painterItem,
    required StockMultiPieSettings settings,
    required StockTouchCallbackData touchedData,
  }) {
    final StockDataPieItem? item =
        touchedData.selectedItem is StockDataPieItem ? touchedData.selectedItem as StockDataPieItem : null;
    if (item == null) {
      return;
    }
    final TextPainter namePainter = TextPainter(
      text: TextSpan(
        text: item.name,
        style: settings.tooltipNameTextStyle,
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    final TextPainter amountPainter = TextPainter(
      text: TextSpan(
        text: item.tooltipAmount,
        style: settings.tooltipAmountTextStyle,
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    final Offset position = Offset(
      (touchedData.clickedPos?.dx ?? 0.0) -
          max(namePainter.width, amountPainter.width).half -
          settings.paddingTooltip.horizontal.half,
      (touchedData.clickedPos?.dy ?? 0.0) -
          (namePainter.height + amountPainter.height).half -
          settings.paddingTooltip.vertical.half,
    );
    final Size size = Size(
      max(namePainter.width, amountPainter.width) + settings.paddingTooltip.horizontal,
      namePainter.height + amountPainter.height + settings.paddingTooltip.vertical,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        position & size,
        Radius.circular(settings.radius),
      ),
      Paint()..color = AppColors.white,
    );
    namePainter.paint(
      canvas,
      Offset(
        position.dx + (size.width - namePainter.width).half,
        position.dy + settings.paddingTooltip.top,
      ),
    );
    amountPainter.paint(
      canvas,
      Offset(
        position.dx + (size.width - amountPainter.width).half,
        position.dy + namePainter.height + settings.paddingTooltip.top,
      ),
    );
  }

  static double _degreeToRad(double degree) => 2.0 * pi * (degree < 0.0 ? degree + 360.0 : degree) / 360.0;
}
