import 'package:freezed_annotation/freezed_annotation.dart';

part 'finances_overview_model.g.dart';
part 'finances_overview_model.freezed.dart';

@freezed
class FinancesOverviewModel with _$FinancesOverviewModel {
  const factory FinancesOverviewModel({
    required double cashBalance,
    required double spent,
    required DateTime since,
  }) = _FinancesOverviewModel;

  const FinancesOverviewModel._();

  factory FinancesOverviewModel.fromJson(Map<String, dynamic> json) => _$FinancesOverviewModelFromJson(json);
}
