import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vizier/data/models/offer/offer_type.dart';
import 'package:vizier/data/models/offer/slider_item/offer_slider_model.dart';

part 'offer_model.g.dart';
part 'offer_model.freezed.dart';

@freezed
class OfferModel with _$OfferModel {
  const factory OfferModel({
    required double expectedValue,
    required String label,
    required String image,
    required String detailsImage,
    required List<OfferSliderModel> sliders,
    required OfferType type,
  }) = _OfferModel;

  const OfferModel._();

  factory OfferModel.fromJson(Map<String, dynamic> json) => _$OfferModelFromJson(json);
}
