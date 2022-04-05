part of 'stock_data.dart';

class StockMultiPieData extends StockData {
  final String content;
  final List<StockDataMultiPieItem> items;
  final String title;

  const StockMultiPieData({
    required this.content,
    required this.items,
    required this.title,
  });

  const StockMultiPieData.empty()
      : content = '',
        items = const [],
        title = '';
}
