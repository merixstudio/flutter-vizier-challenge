part of 'financial_history_cubit.dart';

@freezed
class FinancialHistoryState with _$FinancialHistoryState {
  const FinancialHistoryState._();

  const factory FinancialHistoryState.initial() = _Initial;
  const factory FinancialHistoryState.loading() = _Loading;
  const factory FinancialHistoryState.loaded({
    required FinancialHistoryModel financialHistory,
  }) = _Loaded;
  const factory FinancialHistoryState.failure({
    required AppError error,
  }) = _Error;

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );

  FinancialHistoryModel? get financialHistory => maybeMap(
        loaded: (state) => state.financialHistory,
        orElse: () => null,
      );
}
