import 'dart:math';

import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/config/injector/di.dart';
import 'package:vizier/config/styles/images/app_images.dart';
import 'package:vizier/data/models/account/account_model.dart';
import 'package:vizier/data/models/account/breakdown/account_breakdown_model.dart';
import 'package:vizier/data/models/company_asset/company_asset_model.dart';
import 'package:vizier/data/models/company_listing/details/company_listing_details_item_model.dart';
import 'package:vizier/data/models/company_listing/history/company_listing_history_model.dart';
import 'package:vizier/data/models/company_listing/history/data/company_listing_history_data_model.dart';
import 'package:vizier/data/models/company_listing/history/value/company_listing_history_value_model.dart';
import 'package:vizier/data/models/finances_overview/finances_overview_model.dart';
import 'package:vizier/data/models/financial_history/financial_history_model.dart';
import 'package:vizier/data/models/financial_history/history_data/financial_history_data_model.dart';
import 'package:vizier/data/models/goal/goal_model.dart';
import 'package:vizier/data/models/offer/offer_model.dart';
import 'package:vizier/data/models/offer/offer_type.dart';
import 'package:vizier/data/models/offer/slider_item/offer_slider_model.dart';
import 'package:vizier/data/models/offer/slider_item/offer_slider_type.dart';
import 'package:vizier/data/models/portfolio_overview/portfolio_overview_model.dart';
import 'package:vizier/data/models/retirement_plan/data/retirement_plan_data_model.dart';
import 'package:vizier/data/models/retirement_plan/retirement_plan_model.dart';
import 'package:vizier/data/models/transaction/category/transaction_category_model.dart';
import 'package:vizier/data/models/transaction/transaction_model.dart';
import 'package:vizier/data/models/user/user_model.dart';
import 'package:vizier/data/models/wallet/wallet_model.dart';
import 'package:vizier/data/responses/user/notifications/user_notifications_response.dart';
import 'package:vizier/utils/dummy_util.dart';

part 'factories/duration_factory.dart';
part 'factories/transaction_category_factory.dart';
part 'factories/transaction_factory.dart';
part 'finances_mocks.dart';
part 'offers_mocks.dart';
part 'portfolio_mocks.dart';
part 'user_mocks.dart';
part 'wallet_mocks.dart';

@singleton
class MockFactory {
  final DummyUtil dummyUtil;

  MockFactory({
    required this.dummyUtil,
  });

  late final double initialWalletBalance = dummyUtil.randomDouble(
    minNumber: 1400,
    maxNumber: 45000,
  );

  double get _cashBalance => 0.6 * initialWalletBalance;
  double get _goal =>
      initialWalletBalance *
      dummyUtil.randomDouble(
        minNumber: 1,
        maxNumber: 8,
      );
  double get _investmentsBalance => initialWalletBalance - _cashBalance;
  late final double _investmentsChange = dummyUtil.randomDouble(
    minNumber: -200,
    maxNumber: 300,
  );
  DateTime get _currentDate => DateTime.now();

  late final _FinancesMocks finances = _FinancesMocks(
    dummyUtil: dummyUtil,
    cashBalance: _cashBalance,
    currentDate: _currentDate,
    initialWalletBalance: initialWalletBalance,
  );

  late final _OffersMocks offers = _OffersMocks(
    goal: _goal,
  );

  late final _PortfolioMocks portfolio = _PortfolioMocks(
    balance: _investmentsBalance,
    change: _investmentsChange,
    currentDate: _currentDate,
    dummyUtil: dummyUtil,
  );

  late final _UserMocks user = _UserMocks(
    dummyUtil: dummyUtil,
  );

  late final _WalletMocks wallet = _WalletMocks(
    dummyUtil: dummyUtil,
    cashBalance: _cashBalance,
    currentDate: _currentDate,
    goal: _goal,
    initialWalletBalance: initialWalletBalance,
    investmentsBalance: _investmentsBalance,
    investmentsChange: _investmentsChange,
  );
}
