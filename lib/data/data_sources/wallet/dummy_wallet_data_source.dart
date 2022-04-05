import 'package:injectable/injectable.dart';
import 'package:vizier/config/constants/app_constants.dart';
import 'package:vizier/data/data_sources/wallet/wallet_data_source.dart';
import 'package:vizier/data/models/account/account_model.dart';
import 'package:vizier/data/models/account/breakdown/account_breakdown_model.dart';
import 'package:vizier/data/models/goal/goal_model.dart';
import 'package:vizier/data/models/transaction/transaction_model.dart';
import 'package:vizier/data/models/wallet/wallet_model.dart';
import 'package:vizier/data/responses/response_status.dart';
import 'package:vizier/mocks/mock_factory.dart';

@Injectable(as: WalletDataSource)
class DummyWalletDataSource extends WalletDataSource {
  final MockFactory mockFactory;

  DummyWalletDataSource({
    required this.mockFactory,
  });

  @override
  Future<ResponseStatus<bool>> addWalletAccount({
    required AccountModel account,
  }) async {
    await Future.delayed(AppConstants.api.dummyLoadingDuration);
    return ResponseStatus.success(
      mockFactory.wallet.addWalletAccount(
        account: account,
      ),
    );
  }

  @override
  Future<ResponseStatus<AccountBreakdownModel>> accountBreakdown({
    required int daysBack,
    required AccountModel account,
  }) async {
    await Future.delayed(AppConstants.api.dummyLoadingDuration);
    return ResponseStatus.success(
      mockFactory.wallet.prepareAccountBreakdown(daysBack: daysBack, account: account),
    );
  }

  @override
  Future<ResponseStatus<List<GoalModel>>> goals() async {
    await Future.delayed(AppConstants.api.dummyLoadingDuration);

    return ResponseStatus.success(
      mockFactory.wallet.prepareGoals(),
    );
  }

  @override
  Future<ResponseStatus<WalletModel>> wallet() async {
    await Future.delayed(AppConstants.api.dummyLoadingDuration);
    return ResponseStatus.success(
      mockFactory.wallet.prepareWallet(),
    );
  }

  @override
  Future<ResponseStatus<List<TransactionModel>>> transactionHistory({
    required AccountModel accountModel,
  }) async {
    await Future.delayed(AppConstants.api.dummyLoadingDuration);
    return ResponseStatus.success(
      mockFactory.wallet.prepareTransactions(),
    );
  }
}
