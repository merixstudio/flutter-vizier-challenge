import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mrx_charts/mrx_charts.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/cubits/chart_tabs/chart_tab.dart';
import 'package:vizier/cubits/chart_tabs/chart_tabs_cubit.dart';
import 'package:vizier/cubits/retirement_plan/retirement_plan_cubit.dart';
import 'package:vizier/cubits/wallet/wallet_cubit.dart';
import 'package:vizier/data/factory/chart_factory.dart';
import 'package:vizier/data/models/retirement_plan/retirement_plan_model.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/widgets/asset_performance_item.dart';
import 'package:vizier/ui/widgets/chart_container.dart';
import 'package:vizier/ui/widgets/progress_bar.dart';
import 'package:vizier/utils/currency_formatter_util.dart';
import 'package:vizier/utils/date_formatter_util.dart';
import 'package:vizier/utils/percentage_formatter_util.dart';

part 'widgets/home_my_future_assets_header.dart';
part 'widgets/home_my_future_retirement_chart.dart';

class HomeMyFutureContent extends StatefulWidget {
  const HomeMyFutureContent({super.key});

  @override
  State<HomeMyFutureContent> createState() => _HomeMyFutureContentState();
}

class _HomeMyFutureContentState extends State<HomeMyFutureContent> {
  final ChartTabsCubit _chartTabsCubit = DI.resolve<ChartTabsCubit>();

  @override
  void initState() {
    super.initState();
    context.read<RetirementPlanCubit>().fetchData(
          daysTo: _chartTabsCubit.state.selectedTab.days(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppDimensions.padding.defaultHorizontal(),
      child: Column(
        children: [
          BlocBuilder<WalletCubit, WalletState>(
            builder: (context, state) => _HomeMyFutureAssetsHeader(
              assetChange: state.assetsChange,
              assetPercentageChange: state.assetsPercentageChange,
              date: state.wallet?.date,
              goal: state.wallet?.goal,
              goalProgress: state.goalProgress,
            ),
          ),
          SizedBox(
            height: AppDimensions.padding.defaultValue,
          ),
          Expanded(
            child: _buildRetirementPlanChart(
              retirementPlan:
                  context.watch<RetirementPlanCubit>().state.retirementPlan,
            ),
          ),
          SizedBox(
            height: AppDimensions.padding.defaultValue,
          ),
        ],
      ),
    );
  }

  Widget _buildRetirementPlanChart({
    required RetirementPlanModel? retirementPlan,
  }) {
    return BlocConsumer<ChartTabsCubit, ChartTabsState>(
      bloc: _chartTabsCubit,
      listener: (context, state) => state.mapOrNull(
        tab: (state) => context.read<RetirementPlanCubit>().fetchData(
              daysTo: state.selectedTab.days(),
            ),
      ),
      builder: (context, state) => _HomeMyFutureRetirementChart(
        data: retirementPlan,
        timeInterval: DateFormatterUtil.instance.formatInterval(
          from: retirementPlan?.from,
          to: retirementPlan?.to,
        ),
        selectedTab: state.selectedTab,
        onTabSelected: (tab) => _chartTabsCubit.changeTab(tab),
      ),
    );
  }
}
