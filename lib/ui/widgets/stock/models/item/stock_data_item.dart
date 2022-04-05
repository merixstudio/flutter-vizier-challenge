import 'package:flutter/material.dart';
import 'package:vizier/ui/widgets/stock/models/animation/stock_data_color_animation.dart';
import 'package:vizier/ui/widgets/stock/models/animation/stock_data_double_animation.dart';
import 'package:vizier/ui/widgets/stock/models/animation/stock_data_position_animation.dart';
import 'package:vizier/ui/widgets/stock/models/animation/stock_data_size_animation.dart';
import 'package:vizier/ui/widgets/stock/models/painter/stock_painter_item.dart';

part 'candle/stock_data_candle_item.dart';
part 'candle/stock_data_candle_item_value.dart';
part 'stock_data_bar_item.dart';
part 'stock_data_line_item.dart';
part 'stock_data_multi_bar_item.dart';
part 'stock_data_multi_pie_item.dart';
part 'stock_data_pie_item.dart';

abstract class StockDataItem {
  const StockDataItem();
}
