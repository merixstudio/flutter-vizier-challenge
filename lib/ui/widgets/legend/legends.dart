import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:vizier/ui/widgets/legend/models/legend.dart';

class Legends extends StatelessWidget {
  final Legend legend;

  const Legends({
    required this.legend,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (legend.items.isEmpty) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: legend.settings.padding,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: legend.items
            .map(
              (item) => [
                _LegendItem(
                  color: item.color,
                  label: item.label,
                  sizeIcon: legend.settings.sizeIcon,
                  textStyle: legend.settings.textStyle,
                ),
                SizedBox(
                  width: legend.settings.paddingBetweenItems,
                ),
              ],
            )
            .flattened
            .toList()
          ..removeLast(),
      ),
    );
  }
}

class _LegendItem extends StatelessWidget {
  final Color color;
  final String label;
  final double sizeIcon;
  final TextStyle textStyle;

  const _LegendItem({
    required this.color,
    required this.label,
    required this.sizeIcon,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox.fromSize(
          size: Size.square(sizeIcon),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
          ),
        ),
        const SizedBox(
          width: 8.0,
        ),
        Text(
          label,
          style: textStyle,
        ),
      ],
    );
  }
}
