part of 'my_portfolio_cubit.dart';

@freezed
class MyPortfolioState with _$MyPortfolioState {
  const MyPortfolioState._();

  const factory MyPortfolioState.initial() = _Initial;
  const factory MyPortfolioState.loading() = _Loading;
  const factory MyPortfolioState.loaded({
    required PortfolioOverviewModel portfolioOverview,
  }) = _Loaded;
  const factory MyPortfolioState.failure({
    required AppError error,
  }) = _Error;

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );

  PortfolioOverviewModel? get portfolioOverview => maybeMap(
        loaded: (state) => state.portfolioOverview,
        orElse: () => null,
      );
}
