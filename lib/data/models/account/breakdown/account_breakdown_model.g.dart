// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_breakdown_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountBreakdownModel _$$_AccountBreakdownModelFromJson(Map json) =>
    _$_AccountBreakdownModel(
      from: DateTime.parse(json['from'] as String),
      to: DateTime.parse(json['to'] as String),
      transactionCategories: (json['transaction_categories'] as List<dynamic>)
          .map((e) => TransactionCategoryModel.fromJson(
              Map<String, dynamic>.from(e as Map)))
          .toList(),
      account: AccountModel.fromJson(
          Map<String, dynamic>.from(json['account'] as Map)),
    );

Map<String, dynamic> _$$_AccountBreakdownModelToJson(
        _$_AccountBreakdownModel instance) =>
    <String, dynamic>{
      'from': instance.from.toIso8601String(),
      'to': instance.to.toIso8601String(),
      'transaction_categories':
          instance.transactionCategories.map((e) => e.toJson()).toList(),
      'account': instance.account.toJson(),
    };
