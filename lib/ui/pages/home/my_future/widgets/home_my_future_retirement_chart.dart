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
  });

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
    return Chart(
      layers: ChartFactory.fromRetirementPlanModel(
        data,
        daysTo: selectedTab.days(),
      ),
      padding: const EdgeInsets.only(
        bottom: 8.0,
        left: 20.0,
      ),
    );
  }
}
