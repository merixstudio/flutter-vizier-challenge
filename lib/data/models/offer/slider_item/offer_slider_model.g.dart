// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_slider_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferSliderModel _$$_OfferSliderModelFromJson(Map json) =>
    _$_OfferSliderModel(
      current: (json['current'] as num).toDouble(),
      frequency: json['frequency'] as int,
      label: json['label'] as String,
      maxValue: json['max_value'] as int,
      type: $enumDecode(_$OfferSliderTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$_OfferSliderModelToJson(_$_OfferSliderModel instance) =>
    <String, dynamic>{
      'current': instance.current,
      'frequency': instance.frequency,
      'label': instance.label,
      'max_value': instance.maxValue,
      'type': _$OfferSliderTypeEnumMap[instance.type],
    };

const _$OfferSliderTypeEnumMap = {
  OfferSliderType.price: 'price',
  OfferSliderType.year: 'year',
  OfferSliderType.month: 'month',
};
