part of 'stock_data.dart';

class StockLineData extends StockData {
  final StockDataAxis x;
  final StockDataAxis y;
  final List<StockDataLineItem> items;

  const StockLineData({
    required this.items,
    required this.x,
    required this.y,
  });
}
