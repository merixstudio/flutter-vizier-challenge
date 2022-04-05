part of 'stock_settings.dart';

class StockCandleSettings extends StockSettings {
  final TextStyle axisXTextStyle;
  final TextStyle axisYTextStyle;
  final EdgeInsets axisXPadding;
  final EdgeInsets axisYPadding;
  final double radius;
  final bool showGrid;
  final double thickness;

  const StockCandleSettings({
    required this.axisXTextStyle,
    required this.axisYTextStyle,
    this.axisXPadding = EdgeInsets.zero,
    this.axisYPadding = EdgeInsets.zero,
    this.radius = 4.0,
    this.showGrid = true,
    this.thickness = 8.0,
  });
}
