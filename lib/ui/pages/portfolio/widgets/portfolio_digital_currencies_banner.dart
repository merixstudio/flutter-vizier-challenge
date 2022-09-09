part of '../portfolio_page.dart';

class _PortfolioDigitalCurrenciesBanner extends StatelessWidget {
  final double? balance;
  final double? change;

  const _PortfolioDigitalCurrenciesBanner({
    required this.balance,
    required this.change,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: AppDecorations.navyBox(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(AppDimensions.padding.defaultValue),
            child: _buildCurrenciesData(context),
          ),
          Expanded(
            child: Transform.translate(
              offset: const Offset(0.0, 20.0),
              child: SvgPicture.asset(AppImages.svg.bitcoin),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCurrenciesData(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLoc.of(context).portfolioDigitalCurrenciesBannerTitle,
          style: AppTextStyles.caption2().copyWith(
            color: AppColors.white64,
          ),
        ),
        const SizedBox(
          height: 2.0,
        ),
        Text(
          balance != null
              ? CurrencyFormatterUtil.instance.format(
                  value: balance!,
                )
              : '',
          style: AppTextStyles.h3().copyWith(
            color: AppColors.white,
          ),
        ),
        const SizedBox(
          height: 2.0,
        ),
        if (change != null)
          Text(
            PercentageFormatterUtil.instance.format(
              value: change!,
            ),
            style: AppTextStyles.caption2().copyWith(
              color: CurrencyFormatterUtil.instance.changeColor(
                value: change!,
              ),
            ),
          ),
      ],
    );
  }
}
