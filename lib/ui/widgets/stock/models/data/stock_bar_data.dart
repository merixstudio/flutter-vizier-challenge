part of 'stock_data.dart';

class StockBarData extends StockData {
  final StockDataAxis x;
  final StockDataAxis y;
  final List<StockDataBarItem> items;

  const StockBarData({
    required this.items,
    required this.x,
    required this.y,
  });
}
