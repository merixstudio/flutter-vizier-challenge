part of 'my_finances_cubit.dart';

@freezed
class MyFinancesState with _$MyFinancesState {
  const MyFinancesState._();

  const factory MyFinancesState.initial() = _Initial;
  const factory MyFinancesState.loading() = _Loading;
  const factory MyFinancesState.loaded({
    required FinancesOverviewModel financesOverview,
  }) = _Loaded;
  const factory MyFinancesState.failure({
    required AppError error,
  }) = _Error;

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );
}
