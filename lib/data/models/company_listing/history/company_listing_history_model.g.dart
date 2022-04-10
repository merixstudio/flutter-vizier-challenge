// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_listing_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CompanyListingHistoryModel _$$_CompanyListingHistoryModelFromJson(
        Map json) =>
    _$_CompanyListingHistoryModel(
      history: (json['history'] as List<dynamic>)
          .map((e) => CompanyListingHistoryDataModel.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      from: DateTime.parse(json['from'] as String),
      to: DateTime.parse(json['to'] as String),
      daysBack: json['days_back'] as int,
    );

Map<String, dynamic> _$$_CompanyListingHistoryModelToJson(
        _$_CompanyListingHistoryModel instance) =>
    <String, dynamic>{
      'history': instance.history.map((e) => e.toJson()).toList(),
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
      'days_back': instance.daysBack,
    };
