import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/cubits/chart_tabs/chart_tab.dart';
import 'package:vizier/cubits/chart_tabs/chart_tabs_cubit.dart';
import 'package:vizier/cubits/company_listing/details/company_listing_details_cubit.dart';
import 'package:vizier/cubits/company_listing/history/company_listing_history_cubit.dart';
import 'package:vizier/data/factory/stock_data_factory.dart';
import 'package:vizier/data/models/company_asset/company_asset_model.dart';
import 'package:vizier/data/models/company_listing/details/company_listing_details_item_model.dart';
import 'package:vizier/data/models/company_listing/history/company_listing_history_model.dart';
import 'package:vizier/extensions/extensions.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/modals/alert_dialog/adaptive_alert_dialog_factory.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_app_bar.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';
import 'package:vizier/ui/widgets/chart_container.dart';
import 'package:vizier/ui/widgets/performance_percentage_box.dart';
import 'package:vizier/ui/widgets/stock/models/settings/stock_settings.dart';
import 'package:vizier/ui/widgets/stock/stock.dart';
import 'package:vizier/utils/currency_formatter_util.dart';

part 'widgets/company_listing_assets.dart';
part 'widgets/company_listing_buttons.dart';
part 'widgets/company_listing_footer.dart';
part 'widgets/company_listing_history_chart.dart';

class CompanyListingPage extends StatelessWidget implements AutoRouteWrapper {
  final CompanyAssetModel companyAsset;

  static const String route = 'company_listing_page';

  const CompanyListingPage({
    required this.companyAsset,
    Key? key,
  }) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => DI.resolve<ChartTabsCubit>(),
        ),
        BlocProvider(
          create: (context) => DI.resolve<CompanyListingHistoryCubit>()
            ..fetchData(
              companyAsset: companyAsset,
              daysBack: context.read<ChartTabsCubit>().state.selectedTab.days(),
            ),
        ),
        BlocProvider(
          create: (_) => DI.resolve<CompanyListingDetailsCubit>()
            ..fetchData(
              companyAsset: companyAsset,
            ),
        )
      ],
      child: BlocListener<ChartTabsCubit, ChartTabsState>(
        listener: (context, state) => state.mapOrNull(
          tab: (state) => context.read<CompanyListingHistoryCubit>().fetchData(
                companyAsset: companyAsset,
                daysBack: state.selectedTab.days(),
              ),
        ),
        child: this,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdaptiveAppBar(
        context,
        backgroundColor: AppColors.navy,
        centerTitle: false,
        iconTheme: Theme.of(context).iconTheme.copyWith(
              color: AppColors.white,
            ),
        title: Text(
          companyAsset.fullName,
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                color: AppColors.white,
              ),
        ),
      ),
      backgroundColor: AppColors.navy,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.padding.defaultValue,
            ),
            child: _CompanyListingAssets(
              change: companyAsset.currentValue,
              percentage: companyAsset.changePercentage,
              value: companyAsset.currentValue,
            ),
          ),
          Expanded(
            child: BlocBuilder<CompanyListingHistoryCubit, CompanyListingHistoryState>(
              builder: (_, state) => _CompanyListingHistoryChart(
                data: state.companyListingHistoryModel,
                isLoading: state.isLoading,
                onTabSelected: (tab) => context.read<ChartTabsCubit>().changeTab(tab),
                selectedTab: context.watch<ChartTabsCubit>().state.selectedTab,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.padding.defaultValue,
            ),
            child: _CompanyListingButtons(
              onBuyPressed: () => AdaptiveAlertDialogFactory.showContentUnavailable(context),
              onSellPressed: () => AdaptiveAlertDialogFactory.showContentUnavailable(context),
            ),
          ),
          SizedBox(
            height: AppDimensions.padding.biggerValue,
          ),
          BlocBuilder<CompanyListingDetailsCubit, CompanyListingDetailsState>(
            builder: (_, state) => _CompanyListingFooter(
              details: state.details,
              onMorePressed: () => AdaptiveAlertDialogFactory.showContentUnavailable(context),
            ),
          ),
        ],
      ),
    );
  }
}
