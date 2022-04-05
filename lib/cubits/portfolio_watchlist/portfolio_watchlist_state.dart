part of 'portfolio_watchlist_cubit.dart';

@freezed
class PortfolioWatchlistState with _$PortfolioWatchlistState {
  const PortfolioWatchlistState._();

  const factory PortfolioWatchlistState.initial() = _Initial;
  const factory PortfolioWatchlistState.loading() = _Loading;
  const factory PortfolioWatchlistState.loaded({
    required List<CompanyAssetModel> companyAssets,
  }) = _Loaded;
  const factory PortfolioWatchlistState.failure({
    required AppError error,
  }) = _Error;

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );

  List<CompanyAssetModel>? get companyAssets => maybeMap(
        loaded: (state) => state.companyAssets,
        orElse: () => null,
      );
}
