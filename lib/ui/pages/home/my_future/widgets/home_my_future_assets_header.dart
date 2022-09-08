part of '../home_my_future_content.dart';

class _HomeMyFutureAssetsHeader extends StatelessWidget {
  final double? assetChange;
  final double? assetPercentageChange;
  final DateTime? date;
  final double? goal;
  final int? goalProgress;

  const _HomeMyFutureAssetsHeader({
    required this.assetChange,
    required this.assetPercentageChange,
    required this.date,
    required this.goal,
    required this.goalProgress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.defaultBorder(),
      padding: EdgeInsets.all(AppDimensions.padding.defaultValue),
      child: Column(
        children: [
          AssetPerformanceItem(
            assetChange: assetChange,
            assetPercentageChange: assetPercentageChange,
            title: AppLoc.of(context).homeMyFutureAssetPerformanceTitle,
            content: DateFormatterUtil.instance.formatDay(
              date: date,
            ),
          ),
          SizedBox(
            height: AppDimensions.padding.bigValue,
          ),
          ProgressBar(
            currentProgress: goalProgress ?? 0,
            goal: goal != null
                ? CurrencyFormatterUtil.instance.format(
                    value: goal!,
                  )
                : null,
            summary: PercentageFormatterUtil.instance.format(
              value: goalProgress?.toDouble() ?? 0,
              decimalDigits: 0,
            ),
          ),
        ],
      ),
    );
  }
}
