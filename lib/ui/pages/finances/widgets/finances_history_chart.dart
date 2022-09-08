import 'package:flutter/material.dart';
import 'package:mrx_charts/mrx_charts.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/cubits/chart_tabs/chart_tab.dart';
import 'package:vizier/data/factory/chart_factory.dart';
import 'package:vizier/data/models/financial_history/financial_history_model.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/widgets/chart_container.dart';
import 'package:vizier/ui/widgets/legend/legends.dart';
import 'package:vizier/ui/widgets/legend/models/legend.dart';

class FinancesHistoryChart extends StatelessWidget {
  final FinancialHistoryModel? data;
  final String timeInterval;
  final ChartTab selectedTab;
  final Function(ChartTab tab) onTabSelected;
  final VoidCallback? onMorePressed;

  const FinancesHistoryChart({
    required this.data,
    required this.timeInterval,
    required this.selectedTab,
    required this.onTabSelected,
    this.onMorePressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final FinancialHistoryModel? data = this.data;
    return ChartContainer(
      title: AppLoc.of(context).financesHistoryChartHeaderTitle,
      content: timeInterval,
      selectedTab: selectedTab,
      onTabSelected: onTabSelected,
      onMorePressed: onMorePressed,
      chart: data != null
          ? _buildChart(
              context,
              data: data,
            )
          : const SizedBox.shrink(),
    );
  }

  Widget _buildChart(
    BuildContext context, {
    required FinancialHistoryModel data,
  }) {
    return Column(
      children: [
        Legends(
          legend: Legend(
            items: [
              LegendItem(
                color: AppColors.primary100,
                label: AppLoc.of(context).financesHistoryChartBalances,
              ),
              LegendItem(
                color: AppColors.error300,
                label: AppLoc.of(context).financesHistoryChartExpenses,
              ),
            ],
            settings: LegendSettings.fromTextStyle(
              AppTextStyles.caption3().copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: AppDimensions.padding.smallValue,
        ),
        Expanded(
          child: Chart(
            layers: ChartFactory.fromFinancialHistoryModel(data),
            padding: const EdgeInsets.only(
              bottom: 8.0,
              left: 20.0,
            ),
          ),
        ),
      ],
    );
  }
}
