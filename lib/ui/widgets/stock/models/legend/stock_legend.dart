import 'package:flutter/material.dart';

part 'stock_legend_item.dart';
part 'stock_legend_settings.dart';

class StockLegend {
  final List<StockLegendItem> items;
  final StockLegendSettings settings;

  const StockLegend({
    required this.items,
    required this.settings,
  });
}
