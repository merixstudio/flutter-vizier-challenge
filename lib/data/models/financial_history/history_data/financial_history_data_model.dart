import 'dart:math';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial_history_data_model.g.dart';
part 'financial_history_data_model.freezed.dart';

@freezed
class FinancialHistoryDataModel with _$FinancialHistoryDataModel {
  const factory FinancialHistoryDataModel({
    required DateTime date,
    required double balance,
    required double spent,
  }) = _FinancialHistoryDataModel;

  const FinancialHistoryDataModel._();

  double get maxBalanceOrSpent => max(balance, spent);

  factory FinancialHistoryDataModel.fromJson(Map<String, dynamic> json) => _$FinancialHistoryDataModelFromJson(json);
}
