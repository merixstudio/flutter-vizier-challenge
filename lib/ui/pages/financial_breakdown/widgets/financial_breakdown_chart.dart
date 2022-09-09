part of '../financial_breakdown_page.dart';

class _FinancialBreakdownChart extends StatelessWidget {
  final String? title;
  final String? content;
  final List<ChartMultiPieSection>? sections;
  final ChartTab selectedTab;
  final Function(ChartTab tab) onTabSelected;

  const _FinancialBreakdownChart({
    required this.title,
    required this.content,
    required this.sections,
    required this.selectedTab,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (sections?.isNotEmpty ?? false)
          Expanded(
            child: Stack(
              children: [
                Chart(
                  duration: AppConstants.animation.pieChartSweep,
                  layers: ChartFactory.fromStockDataMultiPieItemList(
                    sections ?? [],
                  ),
                ),
                Center(
                  child: _buildCenterPie(),
                ),
              ],
            ),
          ),
        ChartTabsBar(
          selectedTab: selectedTab,
          onTabSelected: onTabSelected,
        ),
      ],
    );
  }

  Widget _buildCenterPie() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedText(
          text: title ?? '',
          style: AppTextStyles.caption3().copyWith(
            color: AppColors.white,
          ),
        ),
        SizedBox(
          height: AppDimensions.padding.smallValue,
        ),
        AnimatedText(
          text: content ?? '',
          style: AppTextStyles.h2().copyWith(
            color: AppColors.white,
          ),
        ),
      ],
    );
  }
}
