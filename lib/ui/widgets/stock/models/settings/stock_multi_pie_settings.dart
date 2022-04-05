part of 'stock_settings.dart';

class StockMultiPieSettings extends StockSettings {
  final double angleOffset;
  final TextStyle contentTextStyle;
  final double gapBetweenChartCircles;
  final double gapSweepAngle;
  final double paddingBetweenTexts;
  final double radius;
  final double strokeWidth;
  final double thickness;
  final TextStyle titleTextStyle;
  final TextStyle tooltipAmountTextStyle;
  final TextStyle tooltipNameTextStyle;
  final EdgeInsets paddingTooltip;

  const StockMultiPieSettings({
    required this.contentTextStyle,
    required this.titleTextStyle,
    required this.tooltipAmountTextStyle,
    required this.tooltipNameTextStyle,
    required this.paddingTooltip,
    this.angleOffset = 30.0,
    this.gapBetweenChartCircles = 20.0,
    this.gapSweepAngle = 10.0,
    this.paddingBetweenTexts = 6.0,
    this.radius = 4.0,
    this.strokeWidth = 5.0,
    this.thickness = 8.0,
  });
}
