import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vizier/config/router/app_router.dart';
import 'package:vizier/config/styles/colors/app_colors.dart';
import 'package:vizier/config/styles/decorations/app_decorations.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/images/app_images.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/cubits/goals/goals_cubit.dart';
import 'package:vizier/cubits/wallet/wallet_cubit.dart';
import 'package:vizier/data/models/account/account_model.dart';
import 'package:vizier/data/models/goal/goal_model.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/modals/alert_dialog/adaptive_alert_dialog_factory.dart';
import 'package:vizier/ui/modals/bottom_actions_sheet/bottom_actions_sheet_factory.dart';
import 'package:vizier/ui/pages/credit_card/form/credit_card_form_page.dart';
import 'package:vizier/ui/pages/credit_card/overview/credit_card_overview.dart';
import 'package:vizier/ui/pages/financial_breakdown/financial_breakdown_page_arguments.dart';
import 'package:vizier/ui/widgets/account_summary_cell.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_button.dart';
import 'package:vizier/ui/widgets/animated_expand.dart';
import 'package:vizier/ui/widgets/animated_progress_bar.dart';
import 'package:vizier/ui/widgets/asset_performance_item.dart';
import 'package:vizier/ui/widgets/section_header.dart';
import 'package:vizier/utils/currency_formatter_util.dart';
import 'package:vizier/utils/date_formatter_util.dart';
import 'package:vizier/utils/percentage_formatter_util.dart';

part 'widgets/home_my_wallet_footer_banner.dart';
part 'widgets/home_my_wallet_goal_cell.dart';
part 'widgets/home_my_wallet_goals_section.dart';
part 'widgets/home_my_wallet_summary.dart';

class HomeMyWalletContent extends StatelessWidget {
  const HomeMyWalletContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: AppDimensions.padding.defaultHorizontal().copyWith(
            bottom: AppDimensions.padding.defaultValue,
          ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          BlocBuilder<WalletCubit, WalletState>(
            builder: (context, state) => _buildWalletContent(
              context,
              state: state,
            ),
          ),
          BlocBuilder<GoalsCubit, GoalsState>(
            builder: (context, state) => state.maybeMap(
              loaded: (state) => _HomeMyWalletGoalsSection(
                goals: state.goals,
                onMorePressed: () =>
                    AdaptiveAlertDialogFactory.showContentUnavailable(context),
              ),
              orElse: () => const SizedBox.shrink(),
            ),
          ),
          SizedBox(
            height: AppDimensions.padding.defaultValue,
          ),
          _HomeMyWalletFooterBanner(
            onPressed: () =>
                AdaptiveAlertDialogFactory.showContentUnavailable(context),
          ),
        ],
      ),
    );
  }

  Widget _buildWalletContent(
    BuildContext context, {
    required WalletState state,
  }) {
    return Column(
      children: [
        AssetPerformanceItem(
          title: AppLoc.of(context).homeMyWalletAssetPerformanceTitle,
          assetChange: state.assetsChange,
          assetPercentageChange: state.assetsPercentageChange,
          content: DateFormatterUtil.instance.formatDay(
            date: state.wallet?.date,
          ),
        ),
        SizedBox(
          height: AppDimensions.padding.bigValue,
        ),
        _HomeMyWalletSummary(
          isLoading: state.isLoading,
          walletBalance: state.wallet?.balance,
          accounts: state.wallet?.accounts,
          onAccountPressed: (account) => context.pushRoute(
            FinancialBreakdownPageRoute(
              arguments: FinancialBreakdownPageArguments(
                account: account,
              ),
            ),
          ),
          onConnectPressed: () =>
              context.router.pushNamed(CreditCardFormPage.route),
          onMorePressed: () => BottomActionsSheetFactory.showWalletMoreModal(
            context,
            onCardsOverviewPressed: () =>
                context.router.pushNamed(CreditCardOverviewPage.route),
          ),
        ),
      ],
    );
  }
}
