import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vizier/data/models/financial_history/history_data/financial_history_data_model.dart';

part 'financial_history_model.g.dart';
part 'financial_history_model.freezed.dart';

@freezed
class FinancialHistoryModel with _$FinancialHistoryModel {
  const factory FinancialHistoryModel({
    required List<FinancialHistoryDataModel> history,
    required DateTime from,
    required DateTime to,
    required int daysBack,
  }) = _FinancialHistoryModel;

  const FinancialHistoryModel._();

  factory FinancialHistoryModel.fromJson(Map<String, dynamic> json) => _$FinancialHistoryModelFromJson(json);
}
