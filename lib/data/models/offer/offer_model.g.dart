// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferModel _$$_OfferModelFromJson(Map json) => _$_OfferModel(
      expectedValue: (json['expected_value'] as num).toDouble(),
      label: json['label'] as String,
      image: json['image'] as String,
      detailsImage: json['details_image'] as String,
      sliders: (json['sliders'] as List<dynamic>)
          .map((e) =>
              OfferSliderModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      type: $enumDecode(_$OfferTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_OfferModelToJson(_$_OfferModel instance) =>
    <String, dynamic>{
      'expected_value': instance.expectedValue,
      'label': instance.label,
      'image': instance.image,
      'details_image': instance.detailsImage,
      'sliders': instance.sliders.map((e) => e.toJson()).toList(),
      'type': _$OfferTypeEnumMap[instance.type],
    };

const _$OfferTypeEnumMap = {
  OfferType.retirementGoals: 'retirementGoals',
  OfferType.mortgage: 'mortgage',
  OfferType.loans: 'loans',
};
