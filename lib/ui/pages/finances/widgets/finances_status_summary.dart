part of '../finances_page.dart';

class _FinancesStatusSummary extends StatelessWidget {
  final double spent;
  final DateTime since;

  const _FinancesStatusSummary({
    required this.spent,
    required this.since,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.defaultBorder(),
      padding: EdgeInsets.all(
        AppDimensions.padding.defaultValue,
      ),
      child: Column(
        children: [
          _buildTitle(context),
          _buildSpentAmount(context),
          _buildSince(context),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      AppLoc.of(context).financesStatusSummaryTitle,
      style: AppTextStyles.caption2Bold().copyWith(
        color: AppColors.error300,
      ),
    );
  }

  Widget _buildSpentAmount(BuildContext context) {
    return Text(
      CurrencyFormatterUtil.instance.format(
        value: spent,
      ),
      style: Theme.of(context).textTheme.headline4,
    );
  }

  Widget _buildSince(BuildContext context) {
    final String date = DateFormatterUtil.instance.format(
          date: since,
          pattern: 'MMMM d',
        ) ??
        '';
    return Text(
      AppLoc.of(context).financesStatusSummarySince(date),
      style: AppTextStyles.caption2().copyWith(
        color: AppColors.navy.withOpacity(0.6),
      ),
    );
  }
}
