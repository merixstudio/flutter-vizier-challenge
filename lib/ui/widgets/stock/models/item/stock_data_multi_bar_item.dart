part of 'stock_data_item.dart';

class StockDataMultiBarItem extends StockDataItem {
  final List<StockDataBarItem> items;
  final double x;

  const StockDataMultiBarItem({
    required this.items,
    required this.x,
  });
}
