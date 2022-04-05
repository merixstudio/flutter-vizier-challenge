part of 'transaction_history_cubit.dart';

@freezed
class TransactionHistoryState with _$TransactionHistoryState {
  const TransactionHistoryState._();

  const factory TransactionHistoryState.initial() = _Initial;
  const factory TransactionHistoryState.loading() = _Loading;
  const factory TransactionHistoryState.loaded({
    required List<TransactionModel> transactions,
  }) = _Loaded;
  const factory TransactionHistoryState.failure({
    required AppError error,
  }) = _Failure;

  List<TransactionModel>? get transactions => mapOrNull(
        loaded: (state) => state.transactions,
      );
}
