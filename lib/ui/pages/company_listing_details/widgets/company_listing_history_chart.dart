part of '../company_listing_page.dart';

class _CompanyListingHistoryChart extends StatelessWidget {
  final CompanyListingHistoryModel? data;
  final bool isLoading;
  final Function(ChartTab tab) onTabSelected;
  final ChartTab selectedTab;

  const _CompanyListingHistoryChart({
    required this.isLoading,
    required this.onTabSelected,
    required this.selectedTab,
    this.data,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CompanyListingHistoryModel? data = this.data;
    return ChartContainer(
      isLoading: isLoading,
      selectedTab: selectedTab,
      onTabSelected: onTabSelected,
      chart: Padding(
        padding: EdgeInsets.only(
          top: AppDimensions.padding.smallValue,
        ),
        child: data != null ? _buildChart(data: data) : const SizedBox.shrink(),
      ),
    );
  }

  Widget _buildChart({
    required CompanyListingHistoryModel data,
  }) {
    return Stock.candle(
      candleData: StockDataFactory.fromPortfolioCurrenciesHistoryModel(data),
      candleSettings: StockCandleSettings(
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
