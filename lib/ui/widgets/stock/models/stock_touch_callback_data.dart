import 'package:flutter/material.dart';
import 'package:vizier/ui/widgets/stock/models/item/stock_data_item.dart';

class StockTouchCallbackData {
  final Offset? clickedPos;
  final StockDataItem selectedItem;

  const StockTouchCallbackData({
    required this.selectedItem,
    this.clickedPos,
  });
}
