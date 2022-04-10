// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portfolio_overview_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PortfolioOverviewModel _$$_PortfolioOverviewModelFromJson(Map json) =>
    _$_PortfolioOverviewModel(
      assetsBalance: (json['assets_balance'] as num).toDouble(),
      assetsChange: (json['assets_change'] as num).toDouble(),
      assetsPercentageChange:
          (json['assets_percentage_change'] as num).toDouble(),
      digitalCurrenciesBalance:
          (json['digital_currencies_balance'] as num).toDouble(),
      digitalCurrenciesPercentageChange:
          (json['digital_currencies_percentage_change'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PortfolioOverviewModelToJson(
        _$_PortfolioOverviewModel instance) =>
    <String, dynamic>{
      'assets_balance': instance.assetsBalance,
      'assets_change': instance.assetsChange,
      'assets_percentage_change': instance.assetsPercentageChange,
      'digital_currencies_balance': instance.digitalCurrenciesBalance,
      'digital_currencies_percentage_change':
          instance.digitalCurrenciesPercentageChange,
    };
