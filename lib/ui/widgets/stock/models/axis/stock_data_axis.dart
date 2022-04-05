import 'package:flutter/material.dart';
import 'package:vizier/extensions/extensions.dart';
import 'package:vizier/ui/widgets/stock/models/animation/stock_data_color_animation.dart';
import 'package:vizier/ui/widgets/stock/models/animation/stock_data_position_animation.dart';
import 'package:vizier/ui/widgets/stock/models/animation/stock_data_text_style_animation.dart';
import 'package:vizier/ui/widgets/stock/models/painter/stock_painter_item.dart';

part 'stock_data_axis_item.dart';

class StockDataAxis {
  final List<StockDataAxisItem> items;
  final double max;
  final double min;

  const StockDataAxis({
    required this.items,
    required this.max,
    required this.min,
  });

  const StockDataAxis.empty()
      : items = const [],
        max = 0.0,
        min = 0.0;

  double get calcMax => max - min;

  double calcValue(int index) => (items[index].value - min).safeDiv(calcMax);
}
