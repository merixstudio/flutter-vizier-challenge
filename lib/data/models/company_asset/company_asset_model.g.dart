// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_asset_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyAssetModel _$$_CompanyAssetModelFromJson(Map json) =>
    _$_CompanyAssetModel(
      shortName: json['short_name'] as String,
      name: json['name'] as String,
      logo: json['logo'] as String,
      currentValue: (json['current_value'] as num).toDouble(),
      changePercentage: (json['change_percentage'] as num).toDouble(),
    );

Map<String, dynamic> _$$_CompanyAssetModelToJson(
        _$_CompanyAssetModel instance) =>
    <String, dynamic>{
      'short_name': instance.shortName,
      'name': instance.name,
      'logo': instance.logo,
      'current_value': instance.currentValue,
      'change_percentage': instance.changePercentage,
    };
