part of '../financial_breakdown_page.dart';

class _FinancialBreakdownChart extends StatelessWidget {
  final String? title;
  final String? content;
  final List<StockDataMultiPieItem>? sections;
  final ChartTab selectedTab;
  final Function(ChartTab tab) onTabSelected;

  const _FinancialBreakdownChart({
    required this.title,
    required this.content,
    required this.sections,
    required this.selectedTab,
    required this.onTabSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (sections?.isNotEmpty ?? false)
          Expanded(
            child: Stock.multiPie(
              multiPieData: StockDataFactory.fromStockDataMultiPieItemList(
                items: sections ?? [],
                title: title ?? '',
                content: content ?? '',
              ),
              multiPieSettings: StockMultiPieSettings(
                angleOffset: -65.0,
                contentTextStyle: AppTextStyles.h2().copyWith(
                  color: AppColors.white,
                ),
                gapBetweenChartCircles: 18.0,
                gapSweepAngle: 8.0,
                paddingTooltip: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 8.0,
                ),
                strokeWidth: 8.0,
                titleTextStyle: AppTextStyles.caption3().copyWith(
                  color: AppColors.white,
                ),
                tooltipAmountTextStyle: AppTextStyles.h6().copyWith(
                  color: AppColors.navy,
                ),
                tooltipNameTextStyle: AppTextStyles.h6().copyWith(
                  color: AppColors.primary100,
                ),
              ),
            ),
          ),
        ChartTabsBar(
          selectedTab: selectedTab,
          onTabSelected: onTabSelected,
        ),
      ],
    );
  }
}
