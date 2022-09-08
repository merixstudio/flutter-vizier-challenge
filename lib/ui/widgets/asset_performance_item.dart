import 'package:flutter/material.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/ui/widgets/performance_percentage_box.dart';
import 'package:vizier/utils/currency_formatter_util.dart';

class AssetPerformanceItem extends StatelessWidget {
  final String? title;
  final double? assetChange;
  final double? assetPercentageChange;
  final String? content;

  const AssetPerformanceItem({
    this.title,
    this.assetChange,
    this.assetPercentageChange,
    this.content,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AnimatedOpacity(
          opacity: assetPercentageChange != null ? 1.0 : 0.0,
          duration: AppConstants.animation.defaultDuration,
          child: _buildTitleRow(context),
        ),
        const SizedBox(
          height: 4.0,
        ),
        AnimatedOpacity(
          opacity: assetChange != null ? 1.0 : 0.0,
          duration: AppConstants.animation.defaultDuration,
          child: _buildContentRow(context),
        ),
      ],
    );
  }

  Widget _buildTitleRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title ?? '',
          style: Theme.of(context).textTheme.headline6,
        ),
        PerformancePercentageBox(
          value: assetPercentageChange ?? 0.0,
        ),
      ],
    );
  }

  Widget _buildContentRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          content ?? '',
          style: AppTextStyles.caption2().copyWith(
            color: AppColors.gray200,
          ),
        ),
        Text(
          CurrencyFormatterUtil.instance.formatWithChangePrefix(
            value: assetChange ?? 0,
          ),
          style: AppTextStyles.caption2().copyWith(
            color: AppColors.navy,
          ),
        ),
      ],
    );
  }
}
