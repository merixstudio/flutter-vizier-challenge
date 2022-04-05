import 'package:flutter/material.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/cubits/chart_tabs/chart_tab.dart';
import 'package:vizier/data/factory/stock_data_factory.dart';
import 'package:vizier/data/models/financial_history/financial_history_model.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/widgets/chart_container.dart';
import 'package:vizier/ui/widgets/stock/models/legend/stock_legend.dart';
import 'package:vizier/ui/widgets/stock/models/settings/stock_settings.dart';
import 'package:vizier/ui/widgets/stock/stock.dart';

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
    Key? key,
  }) : super(key: key);

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
    return Stock.multiBar(
      legend: StockLegend(
        items: [
          StockLegendItem(
            color: AppColors.primary100,
            label: AppLoc.of(context).financesHistoryChartBalances,
          ),
          StockLegendItem(
            color: AppColors.error300,
            label: AppLoc.of(context).financesHistoryChartExpenses,
          ),
        ],
        settings: StockLegendSettings.fromTextStyle(
          AppTextStyles.caption3().copyWith(
            color: AppColors.white,
          ),
        ),
      ),
      multiBarData: StockDataFactory.fromFinancialHistoryModel(data),
      multiBarSettings: StockMultiBarSettings(
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
      ),
    );
  }
}
