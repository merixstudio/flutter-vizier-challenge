part of 'legend.dart';

class LegendSettings {
  final EdgeInsets padding;
  final double paddingBetweenItems;
  final TextStyle textStyle;
  final double sizeIcon;

  const LegendSettings({
    required this.padding,
    required this.paddingBetweenItems,
    required this.sizeIcon,
    required this.textStyle,
  });

  const LegendSettings.fromTextStyle(this.textStyle)
      : padding = EdgeInsets.zero,
        paddingBetweenItems = 8.0,
        sizeIcon = 8.0;
}
