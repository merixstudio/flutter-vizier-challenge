part of 'stock_data.dart';

class StockMultiBarData extends StockData {
  final StockDataAxis x;
  final StockDataAxis y;
  final List<StockDataMultiBarItem> items;

  const StockMultiBarData({
    required this.items,
    required this.x,
    required this.y,
  });
}
