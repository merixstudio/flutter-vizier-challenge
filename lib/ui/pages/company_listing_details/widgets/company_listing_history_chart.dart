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
  });

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
        child: data != null
            ? Chart(
                layers: ChartFactory.fromPortfolioCurrenciesHistoryModel(data),
                padding: const EdgeInsets.only(
                  left: 20.0,
                  bottom: 8.0,
                ),
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
