part of '../home_my_future_content.dart';

class _HomeMyFutureRetirementChart extends StatelessWidget {
  final RetirementPlanModel? data;
  final String timeInterval;
  final ChartTab selectedTab;
  final Function(ChartTab tab) onTabSelected;

  const _HomeMyFutureRetirementChart({
    required this.data,
    required this.timeInterval,
    required this.selectedTab,
    required this.onTabSelected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChartContainer(
      title: AppLoc.of(context).homeMyFutureChartTitle,
      content: timeInterval,
      selectedTab: selectedTab,
      onTabSelected: onTabSelected,
      chart: data != null
          ? _buildChart(
              context,
              data: data!,
            )
          : const SizedBox.shrink(),
    );
  }

  Widget _buildChart(
    BuildContext context, {
    required RetirementPlanModel data,
  }) {
    return Stock.line(
      lineData: StockDataFactory.fromRetirementPlanModel(
        data,
        daysTo: selectedTab.days(),
      ),
      lineSettings: StockLineSettings(
        axisYPadding: const EdgeInsets.only(
          right: 20.0,
        ),
        axisXPadding: const EdgeInsets.only(
          top: 8.0,
        ),
        axisXTextStyle: AppTextStyles.caption3().copyWith(
          color: AppColors.white32,
        ),
        axisYTextStyle: AppTextStyles.caption3().copyWith(
          color: AppColors.white64,
        ),
        thickness: 4,
        radius: 6,
      ),
    );
  }
}
