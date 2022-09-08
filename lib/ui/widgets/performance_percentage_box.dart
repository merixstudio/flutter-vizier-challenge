import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/ui/widgets/arrow_change_value.dart';
import 'package:vizier/utils/percentage_formatter_util.dart';

class PerformancePercentageBox extends StatelessWidget {
  final double value;

  const PerformancePercentageBox({
    required this.value,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.0),
        color: value.isNegative ? AppColors.error100 : AppColors.success100,
      ),
      padding: const EdgeInsets.all(4.0),
      child: ArrowChangeValue(
        change: PercentageFormatterUtil.instance.format(
          value: value,
        ),
        isNegative: value.isNegative,
      ),
    );
  }
}
