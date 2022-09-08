import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';

class ArrowChangeValue extends StatelessWidget {
  final String change;
  final bool isNegative;
  final Color? changeColor;
  final TextStyle? changeStyle;
  final bool arrowOnRightSide;

  const ArrowChangeValue({
    required this.change,
    required this.isNegative,
    this.changeColor,
    this.changeStyle,
    this.arrowOnRightSide = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!arrowOnRightSide) _buildIcon(context),
        _buildTitle(context),
        if (arrowOnRightSide) _buildIcon(context),
      ],
    );
  }

  Widget _buildIcon(BuildContext context) {
    return Icon(
      isNegative ? Icons.arrow_drop_down : Icons.arrow_drop_up,
      color: changeColor ?? AppColors.white,
      size: 20.0,
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      change,
      style: (changeStyle ?? AppTextStyles.caption1Bold()).copyWith(
        color: changeColor ?? AppColors.white,
      ),
    );
  }
}
