import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:vizier/data/errors/app_error.dart';
import 'package:vizier/data/models/account/account_model.dart';
import 'package:vizier/data/models/transaction/transaction_model.dart';
import 'package:vizier/data/repositories/wallet/wallet_repository.dart';
import 'package:vizier/data/responses/response_status.dart';

part 'transaction_history_state.dart';
part 'transaction_history_cubit.freezed.dart';

@injectable
class TransactionHistoryCubit extends Cubit<TransactionHistoryState> {
  final WalletRepository walletRepository;

  TransactionHistoryCubit({
    required this.walletRepository,
  }) : super(const TransactionHistoryState.initial());

  final Map<AccountModel, List<TransactionModel>> _cachedData = {};

  Future<void> fetchData({
    required AccountModel accountModel,
  }) async {
    if (_cachedData.containsKey(accountModel)) {
      emit(
        TransactionHistoryState.loaded(
          transactions: _cachedData[accountModel]!,
        ),
      );
      return;
    }
    emit(
      const TransactionHistoryState.loading(),
    );

    final ResponseStatus<List<TransactionModel>> response = await walletRepository.transactionHistory(
      accountModel: accountModel,
    );
    response.result(
      onSuccess: (data) {
        _cachedData[accountModel] = data;
        emit(
          TransactionHistoryState.loaded(
            transactions: data,
          ),
        );
      },
      onError: (error) => emit(
        TransactionHistoryState.failure(
          error: error,
        ),
      ),
    );
  }
}
