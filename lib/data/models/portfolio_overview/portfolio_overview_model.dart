import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_overview_model.g.dart';
part 'portfolio_overview_model.freezed.dart';

@freezed
class PortfolioOverviewModel with _$PortfolioOverviewModel {
  const factory PortfolioOverviewModel({
    required double assetsBalance,
    required double assetsChange,
    required double assetsPercentageChange,
    required double digitalCurrenciesBalance,
    required double digitalCurrenciesPercentageChange,
  }) = _PortfolioOverviewModel;

  const PortfolioOverviewModel._();

  factory PortfolioOverviewModel.fromJson(Map<String, dynamic> json) => _$PortfolioOverviewModelFromJson(json);
}
