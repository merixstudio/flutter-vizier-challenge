import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vizier/data/models/offer/slider_item/offer_slider_type.dart';

part 'offer_slider_model.g.dart';
part 'offer_slider_model.freezed.dart';

@freezed
class OfferSliderModel with _$OfferSliderModel {
  const factory OfferSliderModel({
    required double current,
    required int frequency,
    required String label,
    required int maxValue,
    required OfferSliderType type,
  }) = _OfferSliderModel;

  const OfferSliderModel._();

  factory OfferSliderModel.fromJson(Map<String, dynamic> json) => _$OfferSliderModelFromJson(json);

  double get actualValue => current * frequency;
}
