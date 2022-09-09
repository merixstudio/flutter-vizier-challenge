part of '../home_my_wallet_content.dart';

class _HomeMyWalletGoalCell extends StatelessWidget {
  final String title;
  final double goal;
  final double change;
  final int reached;
  final VoidCallback onPressed;

  const _HomeMyWalletGoalCell({
    required this.title,
    required this.goal,
    required this.change,
    required this.reached,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AdaptiveButton(
      decoration: AppDecorations.defaultBorder(),
      onPressed: onPressed,
      padding: EdgeInsets.all(AppDimensions.padding.defaultValue),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildTitle(context),
          _buildGoal(context),
          const SizedBox(
            height: 4.0,
          ),
          _buildChange(context),
          SizedBox(
            height: AppDimensions.padding.biggerValue,
          ),
          AnimatedProgressBar(
            currentProgress: reached,
            summary: AppLoc.of(context)
                .homeMyWalletSummaryGoalCellProgressDescription(
              PercentageFormatterUtil.instance.format(
                value: reached.toDouble(),
                decimalDigits: 0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Text(
      title,
      style: AppTextStyles.caption2().copyWith(
        color: AppColors.navy.withOpacity(0.6),
      ),
    );
  }

  Widget _buildGoal(BuildContext context) {
    return Text(
      CurrencyFormatterUtil.instance.formatWithChangePrefix(
        value: goal,
      ),
      style: Theme.of(context).textTheme.headline5,
    );
  }

  Widget _buildChange(BuildContext context) {
    return Text(
      CurrencyFormatterUtil.instance.formatWithChangePrefix(
        value: change,
      ),
      style: AppTextStyles.caption2().copyWith(
        color: CurrencyFormatterUtil.instance.changeColor(
          value: change,
        ),
      ),
    );
  }
}
