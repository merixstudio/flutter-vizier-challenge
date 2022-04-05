part of 'stock_data.dart';

class StockCandleData extends StockData {
  final StockDataAxis x;
  final StockDataAxis y;
  final List<StockDataCandleItem> items;

  const StockCandleData({
    required this.items,
    required this.x,
    required this.y,
  });
}
