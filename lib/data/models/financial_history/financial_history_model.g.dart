// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FinancialHistoryModel _$$_FinancialHistoryModelFromJson(Map json) =>
    _$_FinancialHistoryModel(
      history: (json['history'] as List<dynamic>)
          .map((e) => FinancialHistoryDataModel.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      from: DateTime.parse(json['from'] as String),
      to: DateTime.parse(json['to'] as String),
      daysBack: json['days_back'] as int,
    );

Map<String, dynamic> _$$_FinancialHistoryModelToJson(
        _$_FinancialHistoryModel instance) =>
    <String, dynamic>{
      'history': instance.history.map((e) => e.toJson()).toList(),
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
      'days_back': instance.daysBack,
    };
