part of 'account_financial_breakdown_cubit.dart';

@freezed
class AccountFinancialBreakdownState with _$AccountFinancialBreakdownState {
  const AccountFinancialBreakdownState._();
  const factory AccountFinancialBreakdownState.initial() = _Initial;
  const factory AccountFinancialBreakdownState.loading() = _Loading;
  const factory AccountFinancialBreakdownState.loaded({
    required DateTime from,
    required DateTime to,
    required List<ChartMultiPieSection> sections,
    required List<TransactionCategoryModel> transactionCategories,
  }) = _Loaded;
  const factory AccountFinancialBreakdownState.failure({
    required AppError appError,
  }) = _Failure;

  List<ChartMultiPieSection>? get sections => mapOrNull(
        loaded: (state) => state.sections,
      );

  List<TransactionCategoryModel>? get transactionCategories => mapOrNull(
        loaded: (state) => state.transactionCategories,
      );

  DateTime? get from => mapOrNull(
        loaded: (state) => state.from,
      );

  DateTime? get to => mapOrNull(
        loaded: (state) => state.to,
      );
}
