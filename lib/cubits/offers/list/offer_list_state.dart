part of 'offer_list_cubit.dart';

@freezed
class OfferListState with _$OfferListState {
  const OfferListState._();

  const factory OfferListState.loaded({
    required List<OfferModel> offers,
  }) = _Loaded;
  const factory OfferListState.loading() = _Loading;
  const factory OfferListState.failure({
    required AppError error,
  }) = _Error;
}
