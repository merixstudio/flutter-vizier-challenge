part of 'offer_details_cubit.dart';

@freezed
class OfferDetailsState with _$OfferDetailsState {
  const factory OfferDetailsState({
    required List<OfferSliderModel> sliders,
    double? expectedValue,
    double? calculatedValue,
  }) = _OfferDetailsState;

  factory OfferDetailsState.initial() => const OfferDetailsState(
        sliders: [],
      );
}
