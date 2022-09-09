import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback? onMorePressed;

  const SectionHeader({
    required this.title,
    this.onMorePressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildTitle(context),
        if (onMorePressed != null) _buildMoreButton(context),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline6,
    );
  }

  Widget _buildMoreButton(BuildContext context) {
    return Transform.translate(
      offset: Offset(AppDimensions.padding.defaultValue, 0.0),
      child: AdaptiveButton(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        padding: EdgeInsets.all(
          AppDimensions.padding.defaultValue,
        ),
        onPressed: onMorePressed,
        child: const Icon(
          Icons.more_horiz,
          color: AppColors.black,
        ),
      ),
    );
  }
}
