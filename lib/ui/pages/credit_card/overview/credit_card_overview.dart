import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/styles/dimensions/app_dimensions.dart';
import 'package:vizier/config/styles/text_styles/app_text_styles.dart';
import 'package:vizier/cubits/transaction_history/transaction_history_cubit.dart';
import 'package:vizier/cubits/wallet/wallet_cubit.dart';
import 'package:vizier/data/models/account/account_model.dart';
import 'package:vizier/data/models/transaction/transaction_model.dart';
import 'package:vizier/l10n/app_loc.dart';
import 'package:vizier/ui/models/card_account_type.dart';
import 'package:vizier/ui/widgets/adaptive/adaptive_app_bar.dart';
import 'package:vizier/ui/widgets/credit_card/animated_credit_card.dart';
import 'package:vizier/ui/widgets/section_header.dart';
import 'package:vizier/ui/widgets/transaction_cell.dart';
import 'package:vizier/utils/currency_formatter_util.dart';

part 'widgets/credit_card_list.dart';
part 'widgets/credit_card_transactions_list.dart';

class CreditCardOverviewPage extends StatefulWidget
    implements AutoRouteWrapper {
  static const String route = 'card-overview-page';

  const CreditCardOverviewPage({
    super.key,
  });

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => DI.resolve<TransactionHistoryCubit>(),
      child: this,
    );
  }

  @override
  State<CreditCardOverviewPage> createState() => _CreditCardOverviewPageState();
}

class _CreditCardOverviewPageState extends State<CreditCardOverviewPage> {
  late final PageController _pageController = PageController(
    viewportFraction: 0.85,
  );
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    final List<AccountModel>? accounts =
        context.read<WalletCubit>().state.wallet?.accounts;
    if (accounts?.isNotEmpty ?? false) {
      context.read<TransactionHistoryCubit>().fetchData(
            accountModel: accounts!.first,
          );
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdaptiveAppBar(
        context,
        centerTitle: false,
        title: Text(
          AppLoc.of(context).creditCardOverviewTitle,
          style: AppTextStyles.h5(),
        ),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 2.0,
            child: BlocBuilder<WalletCubit, WalletState>(
              builder: (_, state) {
                final List<AccountModel> accounts =
                    state.wallet?.accounts ?? [];
                return _CreditCardList(
                  accounts: accounts,
                  controller: _pageController,
                  currentIndex: _currentPage,
                  onCardChanged: (account, page) => setState(() {
                    _currentPage = page;
                    context.read<TransactionHistoryCubit>().fetchData(
                          accountModel: account,
                        );
                  }),
                );
              },
            ),
          ),
          SizedBox(
            height: AppDimensions.padding.biggestValue,
          ),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: AppDimensions.padding.defaultHorizontal(),
                  child: SectionHeader(
                    title:
                        AppLoc.of(context).creditCardTransactionsSectionTitle,
                  ),
                ),
                SizedBox(
                  height: AppDimensions.padding.bigValue,
                ),
                Expanded(
                  child: _CreditCardTransactionsList(
                    transactions: context
                            .watch<TransactionHistoryCubit>()
                            .state
                            .transactions ??
                        [],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
