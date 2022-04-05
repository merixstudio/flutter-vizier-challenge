part of 'company_listing_history_cubit.dart';

@freezed
class CompanyListingHistoryState with _$CompanyListingHistoryState {
  const CompanyListingHistoryState._();

  const factory CompanyListingHistoryState.initial() = _Initial;
  const factory CompanyListingHistoryState.loading() = _Loading;
  const factory CompanyListingHistoryState.loaded({
    required CompanyListingHistoryModel companyListingHistoryModel,
  }) = _Loaded;
  const factory CompanyListingHistoryState.failure({
    required AppError error,
  }) = _Error;

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );

  CompanyListingHistoryModel? get companyListingHistoryModel => maybeMap(
        loaded: (state) => state.companyListingHistoryModel,
        orElse: () => null,
      );
}
