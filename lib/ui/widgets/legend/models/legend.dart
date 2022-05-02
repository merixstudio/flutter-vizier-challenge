import 'package:flutter/material.dart';

part 'legend_item.dart';
part 'legend_settings.dart';

class Legend {
  final List<LegendItem> items;
  final LegendSettings settings;

  const Legend({
    required this.items,
    required this.settings,
  });
}
