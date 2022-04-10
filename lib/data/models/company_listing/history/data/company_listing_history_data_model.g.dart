// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_listing_history_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyListingHistoryDataModel _$$_CompanyListingHistoryDataModelFromJson(
        Map json) =>
    _$_CompanyListingHistoryDataModel(
      date: DateTime.parse(json['date'] as String),
      isProfit: json['is_profit'] as bool,
      value1: CompanyListingHistoryValueModel.fromJson(
          Map<String, dynamic>.from(json['value1'] as Map)),
      value2: CompanyListingHistoryValueModel.fromJson(
          Map<String, dynamic>.from(json['value2'] as Map)),
    );

Map<String, dynamic> _$$_CompanyListingHistoryDataModelToJson(
        _$_CompanyListingHistoryDataModel instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'is_profit': instance.isProfit,
      'value1': instance.value1.toJson(),
      'value2': instance.value2.toJson(),
    };
