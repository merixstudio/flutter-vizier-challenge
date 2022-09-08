part of '../company_listing_page.dart';

class _CompanyListingAssets extends StatelessWidget {
  final double change;
  final double percentage;
  final double value;

  const _CompanyListingAssets({
    required this.change,
    required this.percentage,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTitleRow(context),
        const SizedBox(
          height: 4.0,
        ),
        _buildContentRow(context),
      ],
    );
  }

  Widget _buildTitleRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          CurrencyFormatterUtil.instance.format(
            value: value,
          ),
          style: AppTextStyles.h2().copyWith(
            color: AppColors.white,
          ),
        ),
        PerformancePercentageBox(
          value: percentage,
        ),
      ],
    );
  }

  Widget _buildContentRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AppLoc.of(context).portfolioPageAssetPerformanceContent,
          style: AppTextStyles.caption2().copyWith(
            color: AppColors.gray200,
          ),
        ),
        Text(
          CurrencyFormatterUtil.instance.formatWithChangePrefix(
            value: value * percentage / 100.0,
          ),
          style: AppTextStyles.caption2().copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
