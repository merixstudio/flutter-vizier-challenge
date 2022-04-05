import 'package:flutter/material.dart';

class StockPainterItem {
  final Offset position;
  final Size size;

  const StockPainterItem({
    required this.position,
    required this.size,
  });

  const StockPainterItem.empty()
      : position = Offset.zero,
        size = Size.zero;
}
