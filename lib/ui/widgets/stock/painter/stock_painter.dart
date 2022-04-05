import 'dart:math';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/extensions/extensions.dart';
import 'package:vizier/ui/widgets/stock/models/axis/stock_data_axis.dart';
import 'package:vizier/ui/widgets/stock/models/data/stock_data.dart';
import 'package:vizier/ui/widgets/stock/models/item/stock_data_item.dart';
import 'package:vizier/ui/widgets/stock/models/painter/stock_painter_item.dart';
import 'package:vizier/ui/widgets/stock/models/settings/stock_settings.dart';
import 'package:vizier/ui/widgets/stock/models/stock_touch_callback_data.dart';
import 'package:vizier/ui/widgets/stock/models/touchable_shape/arc_shape.dart';
import 'package:vizier/ui/widgets/stock/models/touchable_shape/rectangle_shape.dart';
import 'package:vizier/ui/widgets/stock/models/touchable_shape/touchable_shape.dart';

part 'stock_axis_painter.dart';
part 'stock_bar_painter.dart';
part 'stock_candle_painter.dart';
part 'stock_grid_painter.dart';
part 'stock_line_painter.dart';
part 'stock_multi_bar_painter.dart';
part 'stock_multi_pie_painter.dart';
part 'stock_tooltip_painter.dart';

typedef UpdateTouchableShapesCallback = void Function(List<TouchableShape<StockDataItem>> touchableShapes);

class StockPainter extends CustomPainter {
  StockPainter({
    required this.controller,
    required this.data,
    required this.settings,
    this.oldData,
    this.setTouchableShapes,
    this.touchedData,
  });

  final AnimationController controller;
  final StockData data;
  final StockData? oldData;
  final StockSettings settings;
  final StockTouchCallbackData? touchedData;

  List<TextPainter> _axisXTextPainters = [];
  List<TextPainter> _axisYTextPainters = [];

  ///Only used if graph uses a touch events
  final UpdateTouchableShapesCallback? setTouchableShapes;

  StockPainterItem _axisX = const StockPainterItem.empty();
  StockPainterItem _axisY = const StockPainterItem.empty();
  StockPainterItem _sheet = const StockPainterItem.empty();

  @override
  void paint(Canvas canvas, Size size) {
    _calculate(size);
    final StockData data = this.data;
    final StockSettings settings = this.settings;
    if (data is StockBarData && settings is StockBarSettings) {
      final StockBarData? oldData = this.oldData as StockBarData?;
      _drawAxis(
        canvas: canvas,
        axisXPadding: settings.axisXPadding,
        axisYPadding: settings.axisYPadding,
        axisXTextStyle: settings.axisXTextStyle,
        axisYTextStyle: settings.axisYTextStyle,
        oldX: oldData?.x,
        oldY: oldData?.y,
        x: data.x,
        y: data.y,
      );
      _drawBar(
        canvas: canvas,
        data: data,
        oldData: oldData,
        settings: settings,
      );
    } else if (data is StockCandleData && settings is StockCandleSettings) {
      final StockCandleData? oldData = this.oldData as StockCandleData?;
      _drawAxis(
        canvas: canvas,
        axisXPadding: settings.axisXPadding,
        axisYPadding: settings.axisYPadding,
        axisXTextStyle: settings.axisXTextStyle,
        axisYTextStyle: settings.axisYTextStyle,
        oldX: oldData?.x,
        oldY: oldData?.y,
        x: data.x,
        y: data.y,
      );
      _drawGrid(
        canvas: canvas,
        oldX: oldData?.x,
        oldY: oldData?.y,
        x: data.x,
        y: data.y,
      );
      _drawCandle(
        canvas: canvas,
        data: data,
        oldData: oldData,
        settings: settings,
      );
    } else if (data is StockLineData && settings is StockLineSettings) {
      final StockLineData? oldData = this.oldData as StockLineData?;
      _drawAxis(
        canvas: canvas,
        axisXPadding: settings.axisXPadding,
        axisYPadding: settings.axisYPadding,
        axisXTextStyle: settings.axisXTextStyle,
        axisYTextStyle: settings.axisYTextStyle,
        oldX: oldData?.x,
        oldY: oldData?.y,
        x: data.x,
        y: data.y,
      );
      _drawLine(
        canvas: canvas,
        data: data,
        oldData: oldData,
        settings: settings,
      );
    } else if (data is StockMultiBarData && settings is StockMultiBarSettings) {
      final StockMultiBarData? oldData = this.oldData as StockMultiBarData?;
      _drawAxis(
        canvas: canvas,
        axisXPadding: settings.axisXPadding,
        axisYPadding: settings.axisYPadding,
        axisXTextStyle: settings.axisXTextStyle,
        axisYTextStyle: settings.axisYTextStyle,
        oldX: oldData?.x,
        oldY: oldData?.y,
        x: data.x,
        y: data.y,
      );
      _drawMultiBar(
        canvas: canvas,
        data: data,
        oldData: oldData,
        settings: settings,
      );
    } else if (data is StockMultiPieData && settings is StockMultiPieSettings) {
      final StockMultiPieData? oldData = this.oldData as StockMultiPieData?;
      _drawMultiPie(
        canvas: canvas,
        data: data,
        oldData: oldData,
        settings: settings,
      );
    }
  }

  void _drawAxis({
    required Canvas canvas,
    required EdgeInsets axisXPadding,
    required EdgeInsets axisYPadding,
    required TextStyle axisXTextStyle,
    required TextStyle axisYTextStyle,
    required StockDataAxis x,
    required StockDataAxis y,
    StockDataAxis? oldX,
    StockDataAxis? oldY,
  }) {
    _StockAxisPainter.draw(
      axisXPadding: axisXPadding,
      axisXPainterItem: _axisX,
      axisXTextAverageWidth: _axisXTextPainters.averageWidthOrZero,
      axisXTextStyle: axisXTextStyle,
      axisYPadding: axisYPadding,
      axisYPainterItem: _axisY,
      axisYTextStyle: axisYTextStyle,
      axisYMaxHeight: _axisY.size.height - _axisYTextPainters.lastHeightOrZero - axisYPadding.vertical,
      canvas: canvas,
      controller: controller,
      oldX: oldX,
      oldY: oldY,
      x: x,
      y: y,
    );
  }

  void _drawBar({
    required Canvas canvas,
    required StockBarData data,
    required StockBarSettings settings,
    StockBarData? oldData,
  }) {
    _StockBarPainter.draw(
      canvas: canvas,
      controller: controller,
      data: data,
      oldData: oldData,
      setTouchableShapes: setTouchableShapes,
      painterItem: _sheet,
      settings: settings,
      touchedData: touchedData,
    );
  }

  void _drawCandle({
    required Canvas canvas,
    required StockCandleData data,
    required StockCandleSettings settings,
    StockCandleData? oldData,
  }) {
    _StockCandlePainter.draw(
      canvas: canvas,
      controller: controller,
      data: data,
      oldData: oldData,
      setTouchableShapes: setTouchableShapes,
      painterItem: _sheet,
      settings: settings,
      touchedData: touchedData,
    );
  }

  void _drawGrid({
    required Canvas canvas,
    required StockDataAxis x,
    required StockDataAxis y,
    StockDataAxis? oldX,
    StockDataAxis? oldY,
  }) {
    _StockGridPainter.draw(
      canvas: canvas,
      controller: controller,
      data: data,
      oldX: oldX,
      oldY: oldY,
      painterItem: _sheet,
      x: x,
      y: y,
    );
  }

  void _drawLine({
    required Canvas canvas,
    required StockLineData data,
    required StockLineSettings settings,
    StockLineData? oldData,
  }) {
    _StockLinePainter.draw(
      canvas: canvas,
      controller: controller,
      data: data,
      oldData: oldData,
      painterItem: _sheet,
      settings: settings,
      textPainter: _axisXTextPainters,
      touchedData: touchedData,
      setTouchableShapes: setTouchableShapes,
    );
  }

  void _drawMultiBar({
    required Canvas canvas,
    required StockMultiBarData data,
    required StockMultiBarSettings settings,
    StockMultiBarData? oldData,
  }) {
    _StockMultiBarPainter.draw(
      canvas: canvas,
      controller: controller,
      data: data,
      oldData: oldData,
      setTouchableShapes: setTouchableShapes,
      painterItem: _sheet,
      settings: settings,
      touchedData: touchedData,
    );
  }

  void _drawMultiPie({
    required Canvas canvas,
    required StockMultiPieData data,
    required StockMultiPieSettings settings,
    StockMultiPieData? oldData,
  }) {
    _StockMultiPiePainter.draw(
      canvas: canvas,
      controller: controller,
      data: data,
      oldData: oldData,
      setTouchableShapes: setTouchableShapes,
      painterItem: _sheet,
      settings: settings,
      touchedData: touchedData,
    );
  }

  void _calculate(Size size) {
    double extraPadding = 0.0;
    final StockData data = this.data;
    final StockSettings settings = this.settings;
    EdgeInsets axisXPadding = EdgeInsets.zero;
    EdgeInsets axisYPadding = EdgeInsets.zero;
    if (data is StockBarData && settings is StockBarSettings) {
      extraPadding = settings.thickness.half;
      axisXPadding = settings.axisXPadding;
      axisYPadding = settings.axisYPadding;
      _axisXTextPainters = _generateTextPainters(data.x.items, settings.axisXTextStyle);
      _axisYTextPainters = _generateTextPainters(data.y.items, settings.axisYTextStyle);
    } else if (data is StockMultiBarData && settings is StockMultiBarSettings) {
      final int length = data.items.length;
      extraPadding = (length * settings.thickness + (length - 1) * 2.0).half;
      axisXPadding = settings.axisXPadding;
      axisYPadding = settings.axisYPadding;
      _axisXTextPainters = _generateTextPainters(data.x.items, settings.axisXTextStyle);
      _axisYTextPainters = _generateTextPainters(data.y.items, settings.axisYTextStyle);
    } else if (data is StockCandleData && settings is StockCandleSettings) {
      axisXPadding = settings.axisXPadding;
      axisYPadding = settings.axisYPadding;
      _axisXTextPainters = _generateTextPainters(data.x.items, settings.axisXTextStyle);
      _axisYTextPainters = _generateTextPainters(data.y.items, settings.axisYTextStyle);
    } else if (data is StockLineData && settings is StockLineSettings) {
      axisXPadding = settings.axisXPadding;
      axisYPadding = settings.axisYPadding;
      _axisXTextPainters = _generateTextPainters(data.x.items, settings.axisXTextStyle);
      _axisYTextPainters = _generateTextPainters(data.y.items, settings.axisYTextStyle);
    }
    _axisXTextPainters.calculate(size);
    _axisYTextPainters.calculate(size);
    final double _axisYMaxWidth = _axisYTextPainters.biggestWidth + axisYPadding.horizontal;
    final double _axisXMaxHeight = _axisXTextPainters.biggestHeight + axisXPadding.vertical;
    _axisX = StockPainterItem(
      position: Offset(
        _axisYMaxWidth + extraPadding,
        size.height - _axisXMaxHeight,
      ),
      size: Size(
        size.width - _axisYMaxWidth - extraPadding,
        _axisXMaxHeight,
      ),
    );
    _axisY = StockPainterItem(
      position: Offset.zero,
      size: Size(
        _axisYMaxWidth,
        size.height - _axisXMaxHeight,
      ),
    );
    final axisXTextPainterAverageWidth = _axisXTextPainters.averageWidthOrZero;
    final axisYTextPainterHeight = _axisYTextPainters.firstHeightOrZero;
    _sheet = StockPainterItem(
      position: Offset(
        _axisX.position.dx + axisXTextPainterAverageWidth.half + axisXPadding.left,
        0.0 + axisYTextPainterHeight.half + axisYPadding.top,
      ),
      size: Size(
        _axisX.size.width - axisXTextPainterAverageWidth - axisXPadding.horizontal,
        _axisY.size.height - axisYTextPainterHeight - axisYPadding.vertical,
      ),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

  List<TextPainter> _generateTextPainters(
    List<StockDataAxisItem> items,
    TextStyle textStyle,
  ) {
    return items
        .map(
          (item) => TextPainter(
            text: TextSpan(
              text: item.label,
              style: textStyle,
            ),
            textDirection: TextDirection.ltr,
          ),
        )
        .toList();
  }
}
