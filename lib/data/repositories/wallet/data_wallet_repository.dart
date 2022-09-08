import 'package:injectable/injectable.dart';
import 'package:vizier/data/data_sources/wallet/wallet_data_source.dart';
import 'package:vizier/data/models/account/account_model.dart';
import 'package:vizier/data/models/account/breakdown/account_breakdown_model.dart';
import 'package:vizier/data/models/goal/goal_model.dart';
import 'package:vizier/data/models/transaction/transaction_model.dart';
import 'package:vizier/data/models/wallet/wallet_model.dart';
import 'package:vizier/data/repositories/wallet/wallet_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

@Injectable(as: WalletRepository)
class DataWalletRepository extends WalletRepository {
  final WalletDataSource walletDataSource;

  DataWalletRepository({
    required this.walletDataSource,
  });

  @override
  Future<ResponseStatus<bool>> addWalletAccount({
    required AccountModel account,
  }) async {
    try {
      final ResponseStatus<bool> response =
          await walletDataSource.addWalletAccount(
        account: account,
      );
      return ResponseStatus<bool>.success(response.data!);
    } catch (error) {
      return ResponseStatus<bool>.error(error);
    }
  }

  @override
  Future<ResponseStatus<AccountBreakdownModel>> accountBreakdown({
    required int daysBack,
    required AccountModel account,
  }) async {
    try {
      final ResponseStatus<AccountBreakdownModel> response =
          await walletDataSource.accountBreakdown(
        account: account,
        daysBack: daysBack,
      );
      return ResponseStatus<AccountBreakdownModel>.success(response.data!);
    } catch (error) {
      return ResponseStatus<AccountBreakdownModel>.error(error);
    }
  }

  @override
  Future<ResponseStatus<List<GoalModel>>> goals() async {
    try {
      final ResponseStatus<List<GoalModel>> response =
          await walletDataSource.goals();
      return ResponseStatus<List<GoalModel>>.success(response.data!);
    } catch (error) {
      return ResponseStatus<List<GoalModel>>.error(error);
    }
  }

  @override
  Future<ResponseStatus<WalletModel>> wallet() async {
    try {
      final ResponseStatus<WalletModel> response =
          await walletDataSource.wallet();
      return ResponseStatus<WalletModel>.success(response.data!);
    } catch (error) {
      return ResponseStatus<WalletModel>.error(error);
    }
  }

  @override
  Future<ResponseStatus<List<TransactionModel>>> transactionHistory({
    required AccountModel accountModel,
  }) async {
    try {
      final ResponseStatus<List<TransactionModel>> response =
          await walletDataSource.transactionHistory(
        accountModel: accountModel,
      );
      return ResponseStatus<List<TransactionModel>>.success(response.data!);
    } catch (error) {
      return ResponseStatus<List<TransactionModel>>.error(error);
    }
  }
}
