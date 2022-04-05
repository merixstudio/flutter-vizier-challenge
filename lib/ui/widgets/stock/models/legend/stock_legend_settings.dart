part of 'stock_legend.dart';

class StockLegendSettings {
  final EdgeInsets padding;
  final double paddingBetweenItems;
  final TextStyle textStyle;
  final double sizeIcon;

  const StockLegendSettings({
    required this.padding,
    required this.paddingBetweenItems,
    required this.sizeIcon,
    required this.textStyle,
  });

  const StockLegendSettings.fromTextStyle(this.textStyle)
      : padding = EdgeInsets.zero,
        paddingBetweenItems = 8.0,
        sizeIcon = 8.0;
}
