import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/cubits/chart_tabs/chart_tab.dart';
import 'package:vizier/cubits/chart_tabs/chart_tabs_cubit.dart';
import 'package:vizier/cubits/financial_history/financial_history_cubit.dart';
import 'package:vizier/cubits/my_finances/my_finances_cubit.dart';
import 'package:vizier/data/models/finances_overview/finances_overview_model.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/pages/finances/widgets/finances_history_chart.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_app_bar.dart';
import 'package:vizier/utils/currency_formatter_util.dart';
import 'package:vizier/utils/date_formatter_util.dart';

part 'widgets/finances_header.dart';
part 'widgets/finances_status_summary.dart';

class FinancesPage extends StatelessWidget with AutoRouteWrapper {
  static const String route = 'finances-page';

  const FinancesPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DI.resolve<MyFinancesCubit>()..fetchData(),
        ),
        BlocProvider(
          create: (context) => DI.resolve<ChartTabsCubit>(),
        ),
        BlocProvider(
          create: (context) => DI.resolve<FinancialHistoryCubit>()
            ..fetchData(
              daysBack: context.read<ChartTabsCubit>().state.selectedTab.days(),
            ),
        ),
      ],
      child: BlocListener<ChartTabsCubit, ChartTabsState>(
        listener: (context, state) => state.mapOrNull(
          tab: (state) => context.read<FinancialHistoryCubit>().fetchData(
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
        title: Text(
          AppLoc.of(context).financesPageTitle,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: _buildBody(context),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<MyFinancesCubit, MyFinancesState>(
          builder: (context, state) => state.maybeMap(
            loading: (_) => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (state) => _buildFinancesOverviewLoadedBody(
              context,
              financesOverview: state.financesOverview,
            ),
            orElse: () => const SizedBox.shrink(),
          ),
        ),
        Expanded(
          child: _buildFinancialHistoryBody(
            context,
            state: context.watch<FinancialHistoryCubit>().state,
          ),
        ),
      ],
    );
  }

  Widget _buildFinancesOverviewLoadedBody(
    BuildContext context, {
    required FinancesOverviewModel financesOverview,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _FinancesHeader(
          cashBalance: financesOverview.cashBalance,
        ),
        SizedBox(
          height: AppDimensions.padding.bigValue,
        ),
        _FinancesStatusSummary(
          spent: financesOverview.spent,
          since: financesOverview.since,
        ),
        SizedBox(
          height: AppDimensions.padding.defaultValue,
        ),
      ],
    );
  }

  Widget _buildFinancialHistoryBody(
    BuildContext context, {
    required FinancialHistoryState state,
  }) {
    return FinancesHistoryChart(
      data: state.financialHistory,
      timeInterval: DateFormatterUtil.instance.formatInterval(
        from: state.financialHistory?.from,
        to: state.financialHistory?.to,
      ),
      selectedTab: context.watch<ChartTabsCubit>().state.selectedTab,
      onTabSelected: (tab) => context.read<ChartTabsCubit>().changeTab(tab),
    );
  }
}
