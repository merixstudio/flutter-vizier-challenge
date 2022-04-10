// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'finances_overview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FinancesOverviewModel _$$_FinancesOverviewModelFromJson(Map json) =>
    _$_FinancesOverviewModel(
      cashBalance: (json['cash_balance'] as num).toDouble(),
      spent: (json['spent'] as num).toDouble(),
      since: DateTime.parse(json['since'] as String),
    );

Map<String, dynamic> _$$_FinancesOverviewModelToJson(
        _$_FinancesOverviewModel instance) =>
    <String, dynamic>{
      'cash_balance': instance.cashBalance,
      'spent': instance.spent,
      'since': instance.since.toIso8601String(),
    };
