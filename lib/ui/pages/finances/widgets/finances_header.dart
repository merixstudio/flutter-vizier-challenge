part of '../finances_page.dart';

class _FinancesHeader extends StatelessWidget {
  final double cashBalance;

  const _FinancesHeader({
    required this.cashBalance,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTitle(context),
        _buildDescription(context),
      ],
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      CurrencyFormatterUtil.instance.format(
        value: cashBalance,
      ),
      style: Theme.of(context).textTheme.headline1,
    );
  }

  Widget _buildDescription(BuildContext context) {
    return Text(
      AppLoc.of(context).financesHeaderDescription,
      style: AppTextStyles.caption2Bold().copyWith(
        color: AppColors.navy.withOpacity(0.5),
      ),
    );
  }
}
