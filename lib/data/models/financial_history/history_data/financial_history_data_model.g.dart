// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financial_history_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FinancialHistoryDataModel _$$_FinancialHistoryDataModelFromJson(Map json) =>
    _$_FinancialHistoryDataModel(
      date: DateTime.parse(json['date'] as String),
      balance: (json['balance'] as num).toDouble(),
      spent: (json['spent'] as num).toDouble(),
    );

Map<String, dynamic> _$$_FinancialHistoryDataModelToJson(
        _$_FinancialHistoryDataModel instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'balance': instance.balance,
      'spent': instance.spent,
    };
