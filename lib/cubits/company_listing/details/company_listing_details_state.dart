part of 'company_listing_details_cubit.dart';

@freezed
class CompanyListingDetailsState with _$CompanyListingDetailsState {
  const CompanyListingDetailsState._();

  const factory CompanyListingDetailsState.initial() = _Initial;
  const factory CompanyListingDetailsState.loading() = _Loading;
  const factory CompanyListingDetailsState.loaded({
    required List<CompanyListingDetailsItemModel> details,
  }) = _Loaded;
  const factory CompanyListingDetailsState.failure({
    required AppError error,
  }) = _Error;

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );

  List<CompanyListingDetailsItemModel> get details => maybeWhen(
        loaded: (data) => data,
        orElse: () => [],
      );
}
