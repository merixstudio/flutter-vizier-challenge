import 'dart:core';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrx_charts/mrx_charts.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/cubits/account_financial_breakdown/account_financial_breakdown_cubit.dart';
import 'package:vizier/cubits/chart_tabs/chart_tab.dart';
import 'package:vizier/cubits/chart_tabs/chart_tabs_cubit.dart';
import 'package:vizier/data/factory/chart_factory.dart';
import 'package:vizier/data/models/transaction/category/transaction_category_model.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/models/chart_multi_pie_section.dart';
import 'package:vizier/ui/pages/financial_breakdown/financial_breakdown_page_arguments.dart';
import 'package:vizier/ui/widgets/account_summary_cell.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_app_bar.dart';
import 'package:vizier/ui/widgets/animated_text.dart';
import 'package:vizier/ui/widgets/chart_tabs_bar.dart';
import 'package:vizier/utils/currency_formatter_util.dart';
import 'package:vizier/utils/date_formatter_util.dart';
import 'package:vizier/utils/percentage_formatter_util.dart';

part 'widgets/financial_breakdown_chart.dart';
part 'widgets/financial_breakdown_transaction_cell.dart';
part 'widgets/financial_breakdown_transactions_summary.dart';

class FinancialBreakdownPage extends StatelessWidget with AutoRouteWrapper {
  final FinancialBreakdownPageArguments arguments;

  static const String route = 'financial-breakdown-page';

  const FinancialBreakdownPage({
    required this.arguments,
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DI.resolve<ChartTabsCubit>(),
        ),
        BlocProvider(
          create: (context) => DI.resolve<AccountFinancialBreakdownCubit>()
            ..fetchData(
              daysBack: context.read<ChartTabsCubit>().state.selectedTab.days(),
              accountModel: arguments.account,
            ),
        ),
      ],
      child: BlocListener<ChartTabsCubit, ChartTabsState>(
        listener: (context, state) => state.mapOrNull(
          tab: (state) =>
              context.read<AccountFinancialBreakdownCubit>().fetchData(
                    daysBack: state.selectedTab.days(),
                    accountModel: arguments.account,
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
        backgroundColor: Colors.transparent,
        centerTitle: false,
        iconTheme: Theme.of(context).appBarTheme.iconTheme?.copyWith(
              color: AppColors.white,
            ),
        title: Text(
          AppLoc.of(context).financialBreakdownPageTitle,
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                color: AppColors.white,
              ),
        ),
      ),
      backgroundColor: AppColors.navy,
      body: _buildBody(
        context,
        state: context.watch<AccountFinancialBreakdownCubit>().state,
      ),
    );
  }

  Widget _buildBody(
    BuildContext context, {
    required AccountFinancialBreakdownState state,
  }) {
    final Widget child = state.maybeMap(
      loading: (_) => const Center(
        child: CircularProgressIndicator(),
      ),
      loaded: (state) => _buildLoadedBody(
        context,
        from: state.from,
        to: state.to,
        sections: state.sections,
        transactionCategories: state.transactionCategories,
      ),
      orElse: () => const SizedBox.shrink(),
    );
    return AnimatedSwitcher(
      duration: AppConstants.animation.defaultDuration,
      child: child,
    );
  }

  Widget _buildLoadedBody(
    BuildContext context, {
    required DateTime from,
    required DateTime to,
    required List<ChartMultiPieSection>? sections,
    required List<TransactionCategoryModel> transactionCategories,
  }) {
    return Column(
      children: [
        Expanded(
          child: _FinancialBreakdownChart(
            title: DateFormatterUtil.instance.formatTitleInterval(
              from: from,
              to: to,
            ),
            content: DateFormatterUtil.instance.formatContentInterval(
              from: from,
              to: to,
            ),
            sections: sections,
            selectedTab: context.watch<ChartTabsCubit>().state.selectedTab,
            onTabSelected: (tab) =>
                context.read<ChartTabsCubit>().changeTab(tab),
          ),
        ),
        SizedBox(
          height: AppDimensions.padding.defaultValue,
        ),
        const Divider(
          color: AppColors.gray100,
        ),
        Padding(
          padding: EdgeInsets.all(AppDimensions.padding.bigValue),
          child: AccountSummaryCell.fromAccountModel(arguments.account),
        ),
        _FinancialBreakdownTransactionsSummary(
          transactionCategories: transactionCategories,
        ),
      ],
    );
  }
}
