// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WalletModel _$$_WalletModelFromJson(Map json) => _$_WalletModel(
      balance: (json['balance'] as num).toDouble(),
      goal: (json['goal'] as num).toDouble(),
      accounts: (json['accounts'] as List<dynamic>)
          .map(
              (e) => AccountModel.fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(),
      date: DateTime.parse(json['date'] as String),
    );

Map<String, dynamic> _$$_WalletModelToJson(_$_WalletModel instance) =>
    <String, dynamic>{
      'balance': instance.balance,
      'goal': instance.goal,
      'accounts': instance.accounts.map((e) => e.toJson()).toList(),
      'date': instance.date.toIso8601String(),
    };
