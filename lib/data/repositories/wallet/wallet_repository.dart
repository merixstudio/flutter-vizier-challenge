import 'package:vizier/data/models/account/account_model.dart';
import 'package:vizier/data/models/account/breakdown/account_breakdown_model.dart';
import 'package:vizier/data/models/goal/goal_model.dart';
import 'package:vizier/data/models/transaction/transaction_model.dart';
import 'package:vizier/data/models/wallet/wallet_model.dart';
import 'package:vizier/data/responses/response_status.dart';

abstract class WalletRepository {
  Future<ResponseStatus<bool>> addWalletAccount({
    required AccountModel account,
  });
  Future<ResponseStatus<AccountBreakdownModel>> accountBreakdown({
    required int daysBack,
    required AccountModel account,
  });
  Future<ResponseStatus<List<GoalModel>>> goals();
  Future<ResponseStatus<WalletModel>> wallet();
  Future<ResponseStatus<List<TransactionModel>>> transactionHistory({
    required AccountModel accountModel,
  });
}
