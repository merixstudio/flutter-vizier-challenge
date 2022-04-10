// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AccountModel _$$_AccountModelFromJson(Map json) => _$_AccountModel(
      logo: json['logo'] as String,
      name: json['name'] as String,
      number: json['number'] as String,
      balance: (json['balance'] as num).toDouble(),
      change: (json['change'] as num).toDouble(),
      expiry: json['expiry'] as String,
    );

Map<String, dynamic> _$$_AccountModelToJson(_$_AccountModel instance) =>
    <String, dynamic>{
      'logo': instance.logo,
      'name': instance.name,
      'number': instance.number,
      'balance': instance.balance,
      'change': instance.change,
      'expiry': instance.expiry,
    };
