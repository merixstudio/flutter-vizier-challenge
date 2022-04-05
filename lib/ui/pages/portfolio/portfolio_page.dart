import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/router/app_router.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/images/app_images.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/cubits/my_portfolio/my_portfolio_cubit.dart';
import 'package:vizier/cubits/portfolio_watchlist/portfolio_watchlist_cubit.dart';
import 'package:vizier/data/models/company_asset/company_asset_model.dart';
import 'package:vizier/data/models/portfolio_overview/portfolio_overview_model.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/modals/alert_dialog/adaptive_alert_dialog_factory.dart';
import 'package:vizier/ui/pages/portfolio/widgets/portfolio_my_watchlist_cell.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_app_bar.dart';
import 'package:vizier/ui/widgets/asset_performance_item.dart';
import 'package:vizier/ui/widgets/section_header.dart';
import 'package:vizier/utils/currency_formatter_util.dart';
import 'package:vizier/utils/percentage_formatter_util.dart';

part 'widgets/portfolio_digital_currencies_banner.dart';
part 'widgets/portfolio_my_watchlist_section.dart';

class PortfolioPage extends StatelessWidget with AutoRouteWrapper {
  static const String route = 'portfolio-page';

  const PortfolioPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DI.resolve<MyPortfolioCubit>()..fetchData(),
        ),
        BlocProvider(
          create: (context) => DI.resolve<PortfolioWatchlistCubit>()..fetchData(),
        ),
      ],
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdaptiveAppBar(
        context,
        title: Text(
          AppLoc.of(context).portfolioPageTitle,
        ),
      ),
      body: SingleChildScrollView(
        padding: AppDimensions.padding.defaultHorizontal().copyWith(
              bottom: AppDimensions.padding.defaultValue,
            ),
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppDimensions.padding.defaultValue,
        ),
        _buildPortfolioOverviewLoadedBody(
          context,
          portfolioOverview: context.watch<MyPortfolioCubit>().state.portfolioOverview,
        ),
        _PortfolioMyWatchlistSection(
          companyAssets: context.watch<PortfolioWatchlistCubit>().state.companyAssets,
          onCompanyPressed: (company) => context.pushRoute(
            CompanyListingPageRoute(
              companyAsset: company,
            ),
          ),
          onMorePressed: () => AdaptiveAlertDialogFactory.showContentUnavailable(context),
        )
      ],
    );
  }

  Widget _buildPortfolioOverviewLoadedBody(
    BuildContext context, {
    required PortfolioOverviewModel? portfolioOverview,
  }) {
    return Column(
      children: [
        AssetPerformanceItem(
          title: portfolioOverview != null
              ? CurrencyFormatterUtil.instance.format(
                  value: portfolioOverview.assetsBalance,
                )
              : null,
          content: AppLoc.of(context).portfolioPageAssetPerformanceContent,
          assetPercentageChange: portfolioOverview?.assetsPercentageChange,
          assetChange: portfolioOverview?.assetsChange,
        ),
        SizedBox(
          height: AppDimensions.padding.bigValue,
        ),
        _PortfolioDigitalCurrenciesBanner(
          balance: portfolioOverview?.digitalCurrenciesBalance,
          change: portfolioOverview?.digitalCurrenciesPercentageChange,
        ),
      ],
    );
  }
}
