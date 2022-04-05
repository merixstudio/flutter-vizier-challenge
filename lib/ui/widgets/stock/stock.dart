import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/extensions/extensions.dart';
import 'package:vizier/ui/widgets/stock/models/data/stock_data.dart';
import 'package:vizier/ui/widgets/stock/models/item/stock_data_item.dart';
import 'package:vizier/ui/widgets/stock/models/legend/stock_legend.dart';
import 'package:vizier/ui/widgets/stock/models/settings/stock_settings.dart';
import 'package:vizier/ui/widgets/stock/models/stock_touch_callback_data.dart';
import 'package:vizier/ui/widgets/stock/models/touchable_shape/touchable_shape.dart';
import 'package:vizier/ui/widgets/stock/painter/stock_painter.dart';
import 'package:vizier/ui/widgets/stock/shape_touch_detector.dart';

part 'stock_legends.dart';

class Stock extends StatefulWidget {
  final StockData data;
  final StockLegend? legend;
  final StockSettings settings;

  const Stock.bar({
    required StockBarData barData,
    required StockBarSettings barSettings,
    this.legend,
  })  : data = barData,
        settings = barSettings;

  const Stock.candle({
    required StockCandleData candleData,
    required StockCandleSettings candleSettings,
    this.legend,
  })  : data = candleData,
        settings = candleSettings;

  const Stock.line({
    required StockLineData lineData,
    required StockLineSettings lineSettings,
    this.legend,
  })  : data = lineData,
        settings = lineSettings;

  const Stock.multiBar({
    required StockMultiBarData multiBarData,
    required StockMultiBarSettings multiBarSettings,
    this.legend,
  })  : data = multiBarData,
        settings = multiBarSettings;

  const Stock.multiPie({
    required StockMultiPieData multiPieData,
    required StockMultiPieSettings multiPieSettings,
    this.legend,
  })  : data = multiPieData,
        settings = multiPieSettings;

  @override
  State<Stock> createState() => _StockState();
}

class _StockState extends State<Stock> with TickerProviderStateMixin {
  late final AnimationController _controller;
  StockData? oldData;
  StockTouchCallbackData? _touchedData;
  List<TouchableShape<StockDataItem>> _touchableShapes = [];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: AppConstants.animation.defaultDuration,
      vsync: this,
    );
    WidgetsBinding.instance?.addPostFrameCallback(
      (_) => _controller
        ..stop()
        ..reset()
        ..forward(),
    );
  }

  @override
  void didUpdateWidget(covariant Stock oldWidget) {
    if (widget.data != oldWidget.data) {
      setState(() {
        _touchedData = null;
        oldData = oldWidget.data;
        _controller
          ..stop()
          ..reset()
          ..forward();
      });
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final StockLegend? legendGroup = widget.legend;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (legendGroup != null)
          Align(
            alignment: Alignment.centerRight,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: _StockLegends(
                legend: legendGroup,
              ),
            ),
          ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(
              right: _getPaddingRight(),
            ),
            child: AnimatedBuilder(
              animation: _controller,
              builder: (_, __) => ShapeTouchDetector<StockDataItem>(
                shapes: _touchableShapes,
                onTap: (Offset touchPosition, StockDataItem? data) {
                  setState(() {
                    _touchedData = data == null
                        ? null
                        : StockTouchCallbackData(
                            clickedPos: touchPosition,
                            selectedItem: data,
                          );
                  });
                },
                child: CustomPaint(
                  painter: StockPainter(
                    controller: _controller,
                    data: widget.data,
                    oldData: oldData,
                    setTouchableShapes: (List<TouchableShape<StockDataItem>> shapes) {
                      WidgetsBinding.instance?.addPostFrameCallback((_) {
                        if (!_compareLists(_touchableShapes, shapes)) {
                          setState(() {
                            _touchableShapes = shapes;
                          });
                        }
                      });
                    },
                    settings: widget.settings,
                    touchedData: _touchedData,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  double _getPaddingRight() {
    final StockData data = widget.data;
    final StockSettings settings = widget.settings;
    if (data is StockMultiBarData && settings is StockMultiBarSettings && data.items.isNotEmpty) {
      return (data.items.first.items.length * settings.thickness + (data.items.first.items.length - 1) * 2.0).half;
    }
    return 0.0;
  }

  bool _compareLists<T>(List<T>? list1, List<T>? list2) {
    if (list1 == list2) {
      return true;
    }
    if (list1 == null || list2 == null || list1.length != list2.length) {
      return false;
    }
    for (int i = 0; i < list1.length; i++) {
      if (list1[i] != list2[i]) {
        return false;
      }
    }
    return true;
  }
}
